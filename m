Return-Path: <devicetree+bounces-261698-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBk1DjRugGnC8AIAu9opvQ
	(envelope-from <devicetree+bounces-261698-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 10:28:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD36CA1EC
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 10:28:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D5C3E301724F
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 09:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC9982D3225;
	Mon,  2 Feb 2026 09:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ckk8JNm/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D+1AiP1N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AECA3286415
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 09:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770024299; cv=none; b=ZjcEgBkKcVINpwF+hHbgMcvAwfLebJOjMD/a3WtCq5/WGzVvsvA/0Yw1btzt6jKX3IyVejwFoeBKHTGZrMhKrPE0bsTmjZGPgmY2R0XKX+sIIgCyE2Mc3lBoxM1sn4HKGbraaqI8QxfITrBUW9aXErVAINoVBG4Z0IbEhKC2FS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770024299; c=relaxed/simple;
	bh=9n4kY4nyBNYg3GXmH5gj2SV8YneBpm+0ylmQISyn0FI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jSU49NJM//HEHBjWaNsXca96RjWDfaAtWF4/6o08tz9JNyLu5tsybSRwLdI7mZVLtZqzKv+mn+Q3i4mCzAsMUWxOivBr2GtuRh+fnK2BabBDvFu6muHqiiyKIWP380lPiV6wjT/+MUVgFa7yaqG2j7pZ8gLZo4niyqIt/AxW3gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ckk8JNm/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D+1AiP1N; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61284obq681897
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 09:24:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=QNsD0DtK2zs66gdOefBn5zJI
	74oEZ65Y8EMNGDp6FrE=; b=ckk8JNm/8eKKQaJJoztPdWL2lCyq6D1qwAtCtGnf
	H9X2FJOXJABf7x6djd0BpH49tt7VKk+UNPfGJXFa/iwFYfBKw6eo8vmnQbs/JbnJ
	PyHT9NSgJYb7WN1bhZNviwr9aoebSIPiNY5YrU/C9DbRL8Z/0Wqirq3sFAqDuxxJ
	AGo+MYZ77Dse1kibTiJfLnOjlgZnlZzJw5UeoFwVfI9AAw8qOP6YdkKlja1wPc6c
	r+ZyFx2zdYyKRLem46UaidSReiwehmkkedUX6CLaLa1BOBEsnKbSgfqyQ11IdiC8
	bDyJ6QB0aQ0lidQrHUbGa6Bp2PMWOBEtHAh6QnycN3wSHA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1b17vt4c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 09:24:57 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c1cffa1f2dso1679346185a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 01:24:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770024297; x=1770629097; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QNsD0DtK2zs66gdOefBn5zJI74oEZ65Y8EMNGDp6FrE=;
        b=D+1AiP1NOCndymF2jBKscHE2FfiGZRNIV8KbOjapfYSCA3CyAlNkWLH+T+Tikikt3v
         A8amvk0ieLBgRcYfar7P6y+zXomQczAi7BobfSRj8U30d/iKiQdcmZSt54t6lzSNRxdZ
         dcaZ0jvpH5fy0MIOGKB5K1PMan1y4QSwAYH/K8B0PQatvdz+rPZgTF8rllqJCt9i5LeL
         Ae36lgwO6OUISCPXBNkrt90tkc4S7SW0rlYqRxCuUZC9tsu3n5eZLO+0rxJ1K+hcy66i
         zRlcxOH+eR8168VqBy90oZLdCN9JUCrJmHDiYY8/g+p3CCRW48zFL391F9FgFrjoqOBH
         rGag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770024297; x=1770629097;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QNsD0DtK2zs66gdOefBn5zJI74oEZ65Y8EMNGDp6FrE=;
        b=xLosGis7XzyAHcoHNzlGuiyzr/wAUC0l9AhgxzLeexNm14jJbApu5eft4ADcJ8okx+
         z7HiITEA0hgO+3KWcd86xdmb6gVUjOmOCqLMKFdcQv4zmQyBZrvFeLSp/iFmxT3+2LSI
         mJXV/CbyGnxAgBLPPRXWnvb5vt7I0LSG8ec8NOG+/VbPf9hgWrUAvOIRvmjymWGKuSFz
         MIhiI/c07YLA30Hh5wJshYzav2xVrvKApginnn8tshBCnxgbJZ2rkMy2zTrioA9HWjjm
         c1bGChUsC6YlbfegPierrcDnp0/55lj2t3JDytnHUvKk5aQipFvxZfPkEUKNauLhFcsh
         WeiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHPqDxB6fGfxc76ogYEBYxZhLB2qKNCH5VqrRpsG2eu+b/JbdbgyOKMluZWwyxyjQo7WPXiCbHFfQv@vger.kernel.org
X-Gm-Message-State: AOJu0YwC7CGbnwEdvk1UgDy7RqyQLGGlhXAVI/+lQH9O74DhzJ+8o6uE
	Zibo2PHAD3BVskmvpVKicf+/+n4isFMuAdykKvm0Awa8QKNG+nso/SXq2nOt35oHJlJPpQxiFLM
	JJziuF52tPhg1/tlWW+os74b1bM5jpu5nMfrJO56p3qjeoj65zqxFSb1lp81wcJcP
X-Gm-Gg: AZuq6aLrh+cFfYsasSkT9J7782FiszUI+lRASmcC47LMroURV3Xa88d5bcZ1XE0s0fG
	zDPPjQMQgxgmW694lko8SKyUR8wUWlPx3ko5rVjJulOL6dBz4dlWIyyoSFijLxnj1z322p4XTTp
	K0/BNL/AO48qxXygv8oruPGlrQNWoRbbRYaEPipIOZlabfb0x7rAsxKbD5l6rtOqmBACAksTSSx
	5bbliqIP38msY6mU0p/EyOTvRb4uRS43mnVeLwyBK1shxWSfFAAye/el+ZY+lwMcCbWG14HYTAZ
	+Fy+8TCUmwlLoN+0OWTQB9gHPu/JyNb/lPRZTN0Wlx83uCoJ30FkC6viv5FqUyRxbPi4yNkPzWJ
	I/wmuuTRk3EL9VFYwATeyAfc0TydWemFLcAx8PC+fd+yho8IATm86B92TWVkXpMtwIZOMBo/gOa
	u77D5/qSVVZNY11Np/WfMskGU=
X-Received: by 2002:a05:620a:8528:b0:8c7:e8c1:ea05 with SMTP id af79cd13be357-8c7e8c1fd45mr1403084685a.7.1770024296835;
        Mon, 02 Feb 2026 01:24:56 -0800 (PST)
X-Received: by 2002:a05:620a:8528:b0:8c7:e8c1:ea05 with SMTP id af79cd13be357-8c7e8c1fd45mr1403083385a.7.1770024296365;
        Mon, 02 Feb 2026 01:24:56 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074b2d2bsm3423967e87.51.2026.02.02.01.24.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 01:24:55 -0800 (PST)
Date: Mon, 2 Feb 2026 11:24:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v4 0/5] media: qcom: flip the switch between Venus and
 Iris drivers
Message-ID: <pd4slkxwj7q4jrxaxd4xhbzoygxvlnjxjeylqi36pzwy57lion@la65rc7u2fyf>
References: <20260131-venus-iris-flip-switch-v4-0-e10b886771e1@oss.qualcomm.com>
 <f8179247-80ed-4bf0-85d8-53441f0d9311@oss.qualcomm.com>
 <249f2097-8676-4fcb-8570-1ec8c0e946fa@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <249f2097-8676-4fcb-8570-1ec8c0e946fa@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=LcAxKzfi c=1 sm=1 tr=0 ts=69806d69 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=9x2bN_ryx89G4Jrs3UoA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: q23Q7eWne7AYTbOgMV8udgxd7pRLE1jh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4MCBTYWx0ZWRfX4Lu0OtiYHqxH
 rzwa5US5Luae+J0j50hYzTL0QgeyEU9jnmVSBU96kXhnEy9r4+g8Me0BbFhAQ3U7JrL2T47hCCa
 ryV39jW+Jp6IebER/O3ALYZ01J0ZW2IuR/PgU05ppDHgXvKwQYtBYONWRJLWmxgEOqipAv5yxwi
 rXuiqo5E9Z/TZ3VSF/Xfel0GtkHpKoj8NzZjf1NNZnB8zScie4iZNfI6bUayu2C4S8UifiXyzRx
 AS+UYgLGtpYYaEbRvZBvAtYxejDxp70w8f+IcxM+8gz1OE6d/PGv7NEUK2gVfuLWzJluP+KKvPF
 Pg0yccmT+PhUnOtHt9b7193m5XoHrzjEHqcTh0bBtC7T9sgNzxidEXFEBxIVI5D0lLJwxHQqav9
 3Ci9TMUtkj4o6vUDdMej8MQIkjjr88IGBoAl33+ncLfDwgtefzy4VkRri07apVu/l0EEPNnH2AD
 cjOM0Slr9WfOsFax0xg==
X-Proofpoint-GUID: q23Q7eWne7AYTbOgMV8udgxd7pRLE1jh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020080
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261698-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8BD36CA1EC
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 12:12:01PM +0530, Vikash Garodia wrote:
> 
> On 2/2/2026 12:00 PM, Vikash Garodia wrote:
> > 
> > On 1/31/2026 7:28 PM, Dmitry Baryshkov wrote:
> > > As the Venus and Iris drivers are close to the "feature parity" for the
> > > common platforms (SC7280, SM8250), in order to get more attention to
> > > squashing bugs from the Iris driver, flip the switch and default to the
> > > Iris driver if both are enabled. The Iris driver has several
> > > regressions, but hopefully they can be fixed through the development
> > > cycle by the respective team. Also it is better to fail the test than
> > > crash the device (which Venus driver does a lot).
> > > 
> > > Note: then intention is to land this in 6.21, which might let us to
> > > drop those platforms from the Venus driver in 6.22+.
> > > 
> > > Testing methodology: fluster test-suite, single-threaded mode, SM8250
> > > device (RB5).
> > 
> > Fluster results for SC7280 is regressing, which we were discussing in
> > earlier version of this series, need to be fixed. All tests were failing
> > but one for h265 decode.
> 
> I see the patch (#4/5) to increase the size, please add the fluster report
> on sc7280.

From the cover letter:

   For SC7280, the results match the SM8250 ones.

Anyway, the relevant part:

|Test|GStreamer-H.265-V4L2-Gst1.0|
|TOTAL|133/147|
|TOTAL TIME|82.276s|

|-|-|
|Profile|GStreamer-H.265-V4L2-Gst1.0|
|MAIN|132/135|
|MAIN_10|0/11|
|MAIN_STILL_PICTURE|1/1|


# GLOBAL SUMMARY
|TOTALS|GStreamer-H.265-V4L2-Gst1.0|
|-|-|
|TOTAL|133/147|
|TOTAL TIME|82.276s|
|-|-|
|Profile|GStreamer-H.265-V4L2-Gst1.0|
|MAIN|132/135|
|MAIN_10|0/11|
|MAIN_STILL_PICTURE|1/1|
|-|-|



> 
> > 
> > Regards,
> > Vikash
> > 
> 

-- 
With best wishes
Dmitry

