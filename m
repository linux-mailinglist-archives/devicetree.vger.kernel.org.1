Return-Path: <devicetree+bounces-275384-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLmyBdUwtGmuigAAu9opvQ
	(envelope-from <devicetree+bounces-275384-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:44:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E996286412
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:44:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 074C6300DD61
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 933B83B7B75;
	Fri, 13 Mar 2026 15:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WKoaJeyJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AR8pQkiK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AC43AF64C
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773416298; cv=none; b=esgg4gCSWXYW4Ypp8TCiRTI5eOuxIwYFT80tPjRcR9pPCpIp6O8AXL+8ajxcWtkgbp00XHjnbnGHaJVSg3D7iABAgAs+2DW4Xrv/tpcCgsq3TRdyQlexjpoWgyASqG4wyGv7+9+dAIGQTJaJA7TX/laIHmmDtlN9HiBLoyLIPTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773416298; c=relaxed/simple;
	bh=DzV86dVTBkJFl+81gRHZySlu5Hs7Tg3y7UcFrJIGUqU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Icnw7/Li24IHKqud+561rXwGtaM8MwdLUU21Gu+WxGZXUEClcELD8hjizYwnIXFfsWl4g6zOsePmMMm3lQoTjE8nW+MbUbTUt57mQjLUk/wuFG7tDclF8j2uBg9Nvy4mxbafu0xLW4a/3woL8Krc6vkQ0d9JSt2T018N4zm6Mwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WKoaJeyJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AR8pQkiK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DAsXo4529146
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:38:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HfoqBgtFBPOG18HFwuX3p4vU
	62ysi71nghWsY8TsAl8=; b=WKoaJeyJOc1oLoSS9CiFqw5SciMt9ESBcfV6DMfK
	32DM1n/hxoga7Zl95jydi75qyeNNcrPxb8y3Wb6ZSc4ZnOdHmPaGfk9PQvMcWRAQ
	jlbvSFNl+ffSy3Mba3tNbOB4LVktOuQ915luix6M9Lr/io2+u/VEcZ0TeZwPR68f
	eB639YikvY67ztSG1FVpx6OUoKvRg9XgAvgwo2c+eV2LXzUUDFo0QQR+nqvHyiLg
	w/v4URjzR4keJ6O8YyjzAjQlkImBrIkAjrJSC2Ilb0bLMTYnW/Ha7HQ2kEViNfAF
	qipje3K9Qan20VVki8AoxuBWhbJ34dUbXeXP9NI97MMZaQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvh84rx42-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:38:15 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cdb995a1bfso622452685a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773416295; x=1774021095; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HfoqBgtFBPOG18HFwuX3p4vU62ysi71nghWsY8TsAl8=;
        b=AR8pQkiKAv3n3DSVSmGk+jA5B1mLUIpqBuG9VSULSdj4zKOGAADXXluwRUV3BW9u9M
         JduvdV8hpTCEw0W1idXceKYSLZbXFqWGKIBHP+c0oMfFptKjG9Ke22sscrE7wbugorKp
         vx4mte5kpFsPHUkoZDyhrIISsSbx6C/o3Ijzi7Bq2r15ZTe5NPY5fd/YxN8nF0nVX4OQ
         llKk3d0jnTTy/qFD/LeXXapN5OgGDY8AS0apgyCNUK34WKXzI2aIM3mTu09NdBF1omGy
         buGSxB7dqYrFbZw1bNWr+G3RrK5AiKwBU+rLYxc3Wvbus97l5sHMQhxuV9hNSkHg5qGq
         zR5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773416295; x=1774021095;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HfoqBgtFBPOG18HFwuX3p4vU62ysi71nghWsY8TsAl8=;
        b=oIVhsFyGFFLJDq6WaXM4cpbjJFph3GL9mIYLlLkstSekMp8ofUk9nz8k5f1KS7Qc1r
         yN1e2cHxmeOav3+5BNByB0kpMAV4w0E9XeHX2o35KcEtPke/jVMIBckHfpyD0ugi+R1X
         B95i2RHx4VVGGBDmQVzuXKQtmD6/yPzGYGQLzDqUAqdo/vtS6/8M+o5N4KsPEQvzJhAW
         TGFEYMLk6C5RWZptMLRkrl9pmedte4P/tXHQVjR8bJ6Mpd7SShXiLtLe+2qyPv8XLp/I
         HYXYrwJoIqzqgzLS0w5irdzloyOM7AbrH1Bh5+DGQhr0s5GT17TqmBVYMlGbUzH0jJXO
         hHew==
X-Forwarded-Encrypted: i=1; AJvYcCXJmX0e3TZ9+RfAKU7mTROAoZFWeR8iMxoQjeCOx7sQaeY4dzdDTV3W7cIV4430MUYlOMZfCGlnqttO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7KMO/oS3DB2eCB2ktBGyjISdxOpBHirlb7Affpz1VQ/X9z8UG
	38kDQU+UJXpa30ERx/88Ypirnppx22XKN+oiJJd22jkqStlZPdfJK7YchbCmZ0NnB5rNgU/+iDb
	KA/j7L49m1n4V4ZJKnK8NNI4hbJrYAaeAjtGCuMv1+BWIGCI9ua0HLrl0qruVBMor
X-Gm-Gg: ATEYQzzNv25FIaYDFL18Q2XyCd+iDr7cg5I6IiZYpVss+sQHA8LFvn4r7CtFBrcezAj
	zJwQFge37G+c/8fK8SBza8m+4G6rJBG3bQpUtmn3cZklp35LVn9HVroY135Pvtld9mT2QFtzbib
	6hU5rMCutKsaEbfuak/8uuI2A07m2IvCgQr9Kre8jd32zxGMraJ8bzphxZlLrxk6MIQbSoMnIAV
	3XzmPyYz3dtKSoEH/QCgKmvdNg/1clDQhP9MBBGwiFtr5+QW+n6etdWOyn/4A70H7tLgps1dkkt
	xNtVSRlGYVZKw0fpqEn1V9J0HCnFChiRl8CISMGoNz59xs4gkja3eYNgviItxGhGMKCxVsnj7qm
	0GZe9lzXkG9hvqOyVwPwSogPXqEEw5Vf6NlNJQYPT2Xa4ARBKzVbyVj59DROsE8KOzI0gy/PTCa
	rS0P3cU/PaGbIE03W66utYpXgQYPTe3d/PJls=
X-Received: by 2002:a05:620a:44c3:b0:8a2:234a:17be with SMTP id af79cd13be357-8cdb5a1c13amr525242585a.7.1773416295402;
        Fri, 13 Mar 2026 08:38:15 -0700 (PDT)
X-Received: by 2002:a05:620a:44c3:b0:8a2:234a:17be with SMTP id af79cd13be357-8cdb5a1c13amr525238085a.7.1773416294908;
        Fri, 13 Mar 2026 08:38:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156162b08sm1560840e87.53.2026.03.13.08.38.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 08:38:13 -0700 (PDT)
Date: Fri, 13 Mar 2026 17:38:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v3 2/7] media: iris: switch to hardware mode after
 firmware boot
Message-ID: <6hz4rxfxhllulc5o47rwltcjdif3ocqvubfvsh2qnygmnacpyk@hirsszuwi3so>
References: <20260313-kaanapali-iris-v3-0-9c0d1a67af4b@oss.qualcomm.com>
 <20260313-kaanapali-iris-v3-2-9c0d1a67af4b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-kaanapali-iris-v3-2-9c0d1a67af4b@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=OMoqHCaB c=1 sm=1 tr=0 ts=69b42f67 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=dE1MpONsbtOZy1RxgbwA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyNSBTYWx0ZWRfX7Z3eCFOABNkm
 xv4WC5RTw/RL24xLUAFTS9W7S1GZqFr0SSXyAQQGXj7NSNykQWkyiu4h2N6vE8ngOABSJa56P0L
 4oqiFCkN9whK2BfmMafpdwjweTvtsNNzbnlThxXHtc50mtIq9hopxEE5FklpdIWTuvm3pOraMbp
 mnvIuvh6mrYvvvvut5CLdwMSa8zgLMYizQuL+BCG8RVmzcrGZlmmFAzhXTY6m00w95Qqa75ewOo
 wXE7VPGD3N5ti86LHI0uU0C7Wf9faaSE9T9YAzgIHX7AnERpAei0ZFzMKZY/yjil9/BhOJHEqqa
 LvEsTCE5ASRfOTujYFrwg7MOF1wsW/wmn5yxunEyCOst1lujAD0pJtNYa+Yvh5F0NlvGQGMsVE5
 D6Eb3fVLwyzl5TAVnu+hk1qnxPb/Kvpx6uMArgOi46IWTZk5SIj85uvgip5qc0SCP/IvxXdzC8C
 +dckqZNx+xDBPQwM50w==
X-Proofpoint-ORIG-GUID: Tb78EDIBO4c4WuK8gBYP4MJgNHEptK60
X-Proofpoint-GUID: Tb78EDIBO4c4WuK8gBYP4MJgNHEptK60
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 suspectscore=0 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130125
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275384-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7E996286412
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 06:49:36PM +0530, Vikash Garodia wrote:
> Currently the driver switches the vcodec GDSC to hardware (HW) mode
> before firmware load and boot sequence. GDSC can be powered off, keeping
> in hw mode, thereby the vcodec registers programmed in TrustZone (TZ)
> carry default (reset) values.
> Move the transition to HW mode after firmware load and boot sequence.
> 
> The bug was exposed with driver configuring different stream ids to
> different devices via iommu-map. With registers carrying reset values,
> VPU would not generate desired stream-id, thereby leading to SMMU fault.
> 
> For vpu4, when GDSC is switched to HW mode, there is a need to perform
> the reset operation. Without reset, there are occassional issues of
> register corruption observed. Hence the vpu GDSC switch also involves
> the reset.
> 
> Fixes: dde659d37036 ("media: iris: Introduce vpu ops for vpu4 with necessary hooks")
> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>  drivers/media/platform/qcom/iris/iris_core.c       |  4 ++++
>  drivers/media/platform/qcom/iris/iris_hfi_common.c |  4 ++++
>  drivers/media/platform/qcom/iris/iris_vpu2.c       |  1 +
>  drivers/media/platform/qcom/iris/iris_vpu3x.c      |  9 +++-----
>  drivers/media/platform/qcom/iris/iris_vpu4x.c      | 24 ++++++++++++----------
>  drivers/media/platform/qcom/iris/iris_vpu_common.c | 16 +++++++++------
>  drivers/media/platform/qcom/iris/iris_vpu_common.h |  3 +++
>  7 files changed, 38 insertions(+), 23 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

