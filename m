Return-Path: <devicetree+bounces-261694-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPNyBxBrgGkd8AIAu9opvQ
	(envelope-from <devicetree+bounces-261694-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 10:14:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B04BC9FCE
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 10:14:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1484D301626D
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 09:14:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C6CC3563ED;
	Mon,  2 Feb 2026 09:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ErNHJPt/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IcJgPBHS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F833563DA
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 09:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770023673; cv=none; b=ZoS9kRe/zzWRg3kamOMcSmQmkhLArBB0AjL4GGp3zrs4a3lrCZjM6LGLI79u2AjSwUWrV0AIY02u3pNPfViwyKolT/LIzVsHvD8xzMXBYRzdi5uSRhjnGiroB4Kvh1VWd+a9lXSdwQQiMEB2LqcSKRsfUnW5xJXDDeF9qoOpiwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770023673; c=relaxed/simple;
	bh=RPCa4jT3dx8G6SSasNvGFMIbnFAYR60kh9mN5iEbmms=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n4FE0fiwG9cIZoNPCu5utGJNeNi77GlpFL9WGfqeKW/zDNTx6z0DSCbTtLX0CxqgYG7dLVOYKzRw60qQJkjx5u3t8FXJfNdiXjDH0LqYEa+uRsu4xZpxcC3npgaFJ43J8DDuLvAOqs3WFxG67nMoi7OEuv2zUhth0/jgXs6068g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ErNHJPt/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IcJgPBHS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61285EpW736894
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 09:14:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mHvafMJ1u8k1iQozLlGKQ+EjWAWEQhyGmxb/Gs7Mypg=; b=ErNHJPt/HeAcPB0v
	Qc+nOUkottjJNojjNRgR/lzOEAi4kuz9clK08xBSH4XDs7J35ZqL0FyIwqn3PeQX
	Q1j0cEF0eAe4jyUxeuj5B7JhJ4OW4Ph4g5IYMly8KgrNCBwaV0h2vK704r3pB6bE
	3r8p2zCs+xxpSMBpa6ryNjNBVvDbfQeFtwNAhz1egx3yCNGqFzfkvLEVXnGeUHX+
	QAtg2j/Ukhgc4GcjwrCrCWURtn0o5+KntWbCrKp6fTNpz4yY+qqBKcpscDPfJcz5
	cMizK0DL0crT7o9vC4EnlwIvHPdOjr+maRkfWvrPGzYuGTgE0jYflWDuund8cpaT
	ZKuvsw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1b17vrxg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 09:14:31 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70ed6c849so1075910485a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 01:14:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770023671; x=1770628471; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mHvafMJ1u8k1iQozLlGKQ+EjWAWEQhyGmxb/Gs7Mypg=;
        b=IcJgPBHSyYadI6shcMXdWcAIP3opTwEiK99nsfOMPvIMSaLcsUf1B9XNKrqUtTQx6R
         YO3PD1yevYf5X6gpOgEOSktUxfNzcNeYyYdHJw6N0rwC3PRCN9MSDybX1AGQJe4LJ4M2
         oUE8jrsIbflYVN5cei5W0NQRm8BBOL4l66/LuVWvynHsKDkPAVJmkLbcQtw0x5qyI6nx
         S4GblrBIqCyvkAZxBGYSLZOamBiB0OVx6XcEb8zMiaejsXAM16arvcX2TYJRUmrRwKha
         q78iXcclo3cxMs7vNDIvU8T4AcUe4HSoT2ZOCTOaXXgXBtDPXt9VcAhHSjfopttPeplB
         JK8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770023671; x=1770628471;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mHvafMJ1u8k1iQozLlGKQ+EjWAWEQhyGmxb/Gs7Mypg=;
        b=s0i5UXD8IxfDSv2LQd31ehDqGKGR5UyTYTL67EJhfJC1bogE+L8E6NTsNESm9kFgqG
         4MSD8LMvnIjyG8Kbe1icaMg7W0LkVSQYLkJd4U4PeC/1jHkCSI05COR9f588Tv9L68nI
         R8CGPJH7T/ltuTHlzByVwbjQ+cSiy0CCuaGsfGALFNcRJF9OD1ibSXoBiHfgFQGHTHqm
         jqg25mgEzHWm6vUdA9p2P94iSb0kgv7JcdHTQ27lCoTLhBatUthTZfNb7hgd0elKURYn
         iXE3CLlaBb6YdjECPI3L+s9bwJXpT0IED+c16z5nc5jmQ4ipIaIfUGt6uzpLw+Dt7R+x
         wUsQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+vwj84EHNbjy6R/h+im7XdGIcDWaNBXkIKKQMXXASjSq73rPQk4UBfw3sCTddkSzE3wxG3WefJNi/@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1DZkc7MP4tXlZMCMmC68YNi0nbYzy9VbX12MyphZZc7em0spL
	0PbGD13ZGBp221hytzjsR2458dw5eNb7SBXjhXJ0aWO0QCtoPrFUw+jkrGrxHyHctUga0MoQB5r
	9m2V43tIWoSQ2yRx3LPicyXxtbF8px8ppkjMu+K4c5toyctdSwLDUlwPhuHVoISN4
X-Gm-Gg: AZuq6aKN/asTJ4gi0XS/nlQ9dsKo7DsaTAsfnvHwEqG5ff1IrXQdfIz5JvbH3x0/rVO
	QVgXONtTbmAtRIgBibkWMv2xpLNBMHz56ATc2JSDe219laseECIHHw+5+O6i87lKxstZTkkXJJn
	e+l5d4jRIOrrBAE/P85WFQH1/EBP8SamK6DvgBERxobl8Cc781sPcv9A9QyBexOWrdJbmjH7nMN
	5BIZf0cz1o9hUReN/Di10j3+ovP3QbJkLlaA0da1CwU8iP0vIsASymQzMetd6MIZP9H7UXz4iSF
	phWOH/1SdG02em7J4L/uNUXY9Z+ehUMLQN4drnHFtrQgv1RWwhDluE9DbDT9tyZdooo6yWykJpv
	X25x8xHWN6SfENEP55BvhuGmp4y0eOcSsAGrQqjJeALwYtkmQwJx52QN/F92cazMi8KrYmEGosw
	VpNdyx9DlNI3O02MlBovm3jP8=
X-Received: by 2002:a05:620a:404d:b0:8c0:88f3:fac4 with SMTP id af79cd13be357-8c9eb2eec4emr1382586885a.56.1770023670742;
        Mon, 02 Feb 2026 01:14:30 -0800 (PST)
X-Received: by 2002:a05:620a:404d:b0:8c0:88f3:fac4 with SMTP id af79cd13be357-8c9eb2eec4emr1382585385a.56.1770023670292;
        Mon, 02 Feb 2026 01:14:30 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625fca300sm29447051fa.46.2026.02.02.01.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 01:14:29 -0800 (PST)
Date: Mon, 2 Feb 2026 11:14:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
Cc: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v3 1/7] media: dt-bindings: Document SC8280XP/SM8350 Venus
Message-ID: <sq4b4634cnn3dc7xupadlunlv2wvlfc5rlo5krdtot2yvrgc4m@cfeczijdb25o>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
 <20260125-iris-sc8280xp-v3-1-d21861a9ea33@oss.qualcomm.com>
 <3d99e35d-1aef-5e04-55c8-628918e29da4@oss.qualcomm.com>
 <g2ft7zu7mabl63hggbyyfkhntvkmsqjvtu43r2c35ycgrghxgs@53m33fj3b2ft>
 <9831d703-8427-31af-48c7-3942108b3a55@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9831d703-8427-31af-48c7-3942108b3a55@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=LcAxKzfi c=1 sm=1 tr=0 ts=69806af7 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=HLF9OULPyPFYZ6ZIqpMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: E_3k0rlvkBccU5r-8E1itIZ7OgQsU6Ys
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA3OSBTYWx0ZWRfX/dbTW2gf/BZ8
 h57qzDV7kNOkgx6hserEXL55XQ8AvO2++4t5trQH6y+Ik96Q3+uLWHBZOMDqPXWHmqcGmHE0hu/
 kFI91Dy0x5e9IrfgSyRcMNpBd+5o9i1RNSMG6ha4NyAyrSsnRNsX83paaoSnMvh6labTvHDZ5YH
 shl8xCCFakdMLbYXpSWMRqGsToCXuayiWk903jUraoTM81O1vYFFkWl2y9/KKXRrd4CQJUl/zDl
 wIxzJYdK3MiGs+Pzf/EEvO3CpWvFkh6JMkrlhRCMVUYPLdQmhH100Gxjj0G0xSnV7bJSMJntED6
 O0TGzSe8cxQW5g19MOoFHJeTOmSJlkhrfI9spKXQZtmRxJ0ePU1szSPntfqOTo/WLuzWf1v+Oz8
 wwyc3M+vDlWgGETv/gEIlclxQX9YJ8N93iCKhq845CIDeno9veNM4gkfNYRUTJ0XJuo+cUyFTHY
 Udn6q+mLrEfCz4JyO1Q==
X-Proofpoint-GUID: E_3k0rlvkBccU5r-8E1itIZ7OgQsU6Ys
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261694-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,linaro.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8B04BC9FCE
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 01:37:50PM +0530, Dikshita Agarwal wrote:
> 
> 
> On 1/31/2026 1:03 PM, Dmitry Baryshkov wrote:
> > On Fri, Jan 30, 2026 at 05:59:48PM +0530, Dikshita Agarwal wrote:
> >>
> >>
> >> On 1/25/2026 9:02 PM, Dmitry Baryshkov wrote:
> >>> From: Konrad Dybcio <konradybcio@kernel.org>
> >>>
> >>> Both of these SoCs implement an IRIS2 block, with SC8280XP being able
> >>> to clock it a bit higher and  with SM8350 having 4 VPP pipes, while
> >>> SC8280XP having just 2.
> >>>
> >>> Document Iris2 cores found on these SoCs.
> >>>
> >>> Signed-off-by: Konrad Dybcio <konradybcio@kernel.org>
> >>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> >>> [ bod: dropped dts video-encoder/video-decoder ]
> >>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> >>> [db: dropped status, dropped extra LLCC interconnect]
> >>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> >>> ---
> >>>  .../bindings/media/qcom,sm8350-venus.yaml          | 113 +++++++++++++++++++++
> >>>  1 file changed, 113 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8350-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sm8350-venus.yaml
> >>> new file mode 100644
> >>> index 000000000000..d78bdc08d830
> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/media/qcom,sm8350-venus.yaml
> >>> @@ -0,0 +1,113 @@
> >>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> >>> +%YAML 1.2
> >>> +---
> >>> +$id: http://devicetree.org/schemas/media/qcom,sm8350-venus.yaml#
> >>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>> +
> >>> +title: Qualcomm SM8350 Venus video encode and decode accelerators
> >>
> >> s/Venus/iris
> >>
> >>> +
> >>> +maintainers:
> >>> +  - Konrad Dybcio <konradybcio@kernel.org>
> >>> +
> >>> +description: |
> >>> +  The Venus Iris2 IP is a video encode and decode accelerator present
> >>> +  on Qualcomm platforms
> >>> +
> >>> +allOf:
> >>> +  - $ref: qcom,venus-common.yaml#
> >>
> >> Pls remove the reference to venus-common.yaml and follow schema of
> >> sm8550-iris.yaml
> > 
> > Why? For example, sm8750-iris uses venus-common.yaml.
> 
> Ack — in that case sm8750‑iris should be aligned as well.
> Since Krzysztof’s patch [1] removes all venus-common references from
> sm8550‑iris, all *-iris platforms should follow the same convention IMO.

He has been dropping references to venus-common.yaml mostly (IIUC)
because of the video-firmware. With the video-firmware being moved to
sc7180, the issue is no longer present. I will check if it makes sense
to keep (and use) venus-common or if it makes more sense to stop using
it.

> 
> [1]:
> https://lore.kernel.org/linux-media/20250823155349.22344-2-krzysztof.kozlowski@linaro.org/

-- 
With best wishes
Dmitry

