Return-Path: <devicetree+bounces-278015-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AINSB1pTvGkXwwIAu9opvQ
	(envelope-from <devicetree+bounces-278015-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:49:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F072D1CBB
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:49:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4E45307596F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:49:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B835C33031F;
	Thu, 19 Mar 2026 19:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ri9PUEMG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VqP5j5gs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BCE16F0FE
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773949753; cv=none; b=HHtgT+NMredX2jHtZs9FCPC1vM2EfGV0ictl8EUd75LqoAnc/nlctjEeUUWJjKiYgac1yjmMh7McV3sbR3pbD0eU4kzAWA9tnC4tmuEwnXNjJ+7mqgwLrc0MqhZFpkN+nYmsON4qtsQAEX0Gu6zUamQBzJodPOak+Ora4Z+qS88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773949753; c=relaxed/simple;
	bh=bpn1N1jgK/pQfPfjjGnXC5m7GqMCEhAYq4gnNNZQPcM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OpI4tOHYjJlKdzGlffySuss+Rxv0cBXAEfBPaUMQEhAIV8qN/Px/LwtdGvLGRcHc9SM1zEErxmUC50BFOoT1d95qyYot0JqkdcAh2THxewMPLyc6DjUE315dDzaDtFKDANXbnOYJQi9+7+jEDyx9RZP4f8t/irSM/1nKrMWHQtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ri9PUEMG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VqP5j5gs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62JF2MWW3771136
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:49:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PNtTIZV4NuB9d/lG5/IcTyiK
	we1tCAXZ9YehITjY+Ns=; b=Ri9PUEMGCMTz9nvloOOqnhuevTm5mF0ybE2kbqa1
	GAmDYHQsZb295kmj6HMX4YaCaVjhF7nY1Mv/z92QEzLtJ+X/W2v6TvJwMiQCm01e
	lE5l6Eqh+cGMi3F8Vbt31aHaiHFQ9eNCDt3GA/Qnr46aqnPHP2FZTvojQ5JgZySQ
	b2tGf2QWEdtq1L55Kh9lEsSdxSJM+lj/VNpQyCzg71qtxx20/5JjmfUJAbN9U713
	rKdWLrXVvF8OdfB40fTrAhUJJAaa5ZkvJB3ORJBtkw0QlCwM6MyD0kJJzMrwRRcS
	bTgNftsuoOzv3vsYAZFeUcMEHMgK5JeL1YSY0VjDUpVs/A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d083rb5vr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:49:11 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-509114d7418so16001431cf.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773949750; x=1774554550; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PNtTIZV4NuB9d/lG5/IcTyiKwe1tCAXZ9YehITjY+Ns=;
        b=VqP5j5gsF36lFUVtlM0dJQtMzAgwK+G3DrZ8YKwO6Fp0DqezkZmb6Dbn2V2MemMUTq
         Upathu78LWrD3YkC/PeHaYVWFE+BufhTTg9qtby0m7Jec3bUWItt9dbZh53lIIe2vpnY
         T8roybl+a4nz43SwhmYKPPnZwthnITKoGzHr2cMwApznpYJs+aN9ls3Vr9LpMR9By0K6
         8NFZXwAOTV+fJYsCY/224BLZbiYifcYSwFXKk443WyOQP14ono8nF18OQdv55BT292Ae
         gTqy6QejjwrcFTxEN9SqpFg5uljqcs0NZrExXqkxfZ9dsvNk20WX5QcqpgtzoiwBuqqG
         vbtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773949750; x=1774554550;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PNtTIZV4NuB9d/lG5/IcTyiKwe1tCAXZ9YehITjY+Ns=;
        b=aOG2URW0wujQ+E7Tzlr4kY1E31E1Y+fLmh2tqcfxNJTlSoza53TXe/szZ7JCIW14pr
         /+aO/MHzYTkp/sZRz0ft2Ri1tGW0pKu7TuZ98RKp3JgmN6WbvtYZsCOHAV0OkMVIcTEr
         xbFRk7ujAzU0CrqnAuCJaynqR808hzGaaFJUsfI0jQJyH6khJpspsZC6HWL/7ueeuxKx
         EDZdzw3imnMEJ6mBqvrpKaufEOIXVsdIHVsWXa7YlyZf1SvtsV0Yrh5MzjIGvx+FMpI7
         DRHg+SFGZq1/UufgO7QlvBBSk4iQ3re+mWby0C/HCPYr9xNJsG1z8Vv5vaXVmODf7Whi
         6DoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXlZ2BorjhRco0t79lMtlEA/LSHDWc4fJQ8wp8C5WE2FRm1AAhn4NhOYV3f+rdzJKyOO7z4ys/zKmdB@vger.kernel.org
X-Gm-Message-State: AOJu0YxqLcXH54OeBA35TVOx3NiWhMw8Busgh1o8zYG/3mEC7bP6vDS2
	Rmuypsd5OZPp3S1GzQ9uucrVXUiCWixojmrCLBIG/wzoFQJfpujkNa142u3t3lpDgXA7YSQNd8K
	U2ZV0MPQmK3BlByvn+ZxgltjbXl6L7RFs4Iw2QW7jI1bJZB9OqQLsySTF0mCPMONy
X-Gm-Gg: ATEYQzwNQ4n2Q78VJF3WBRV3MU+r8SYKEanDUnFJYr84zFifsA1EFMggAz6G4JT46E5
	4u7uFmWO7OzCJpVmAPE6D0d56PGzYX9MDETXadf+LZMtPBXpQffOrGnvsD6nhzMPfbAUxWxJhGj
	rOeNWI87EXqLGNcPTbQ81q9qZb4PzMmv4xqmRCjHopYwv6xxpXhX5EdFKciClHHRXn+laDxlL6/
	gwNOb38a/+7DkZsKI8Z381wEzrSjrf+EAwlS+6GKo1K8o36ai/kupmfxhd3L0fz2oxOAnSJT+F2
	JkxNO7FQPo1YhMvvjeK+QogZspEP1UgFgN9mdM7/lJZWlRK01c69SoWPV3E+Yzm3zpMqUJSbZ4R
	5ftW0Ufw1J66Bc1DvdBQ4aIX8n0+N/6piD44l57zxoE0SyN+QkizeRyaYYvfOg++Brieklcym9z
	5UUgpCmqP1BJV9VHK21YVAU5p82gOVwbqZ/p0=
X-Received: by 2002:a05:622a:c6:b0:509:21ce:1a9 with SMTP id d75a77b69052e-50b373d0b13mr8491231cf.10.1773949750306;
        Thu, 19 Mar 2026 12:49:10 -0700 (PDT)
X-Received: by 2002:a05:622a:c6:b0:509:21ce:1a9 with SMTP id d75a77b69052e-50b373d0b13mr8490571cf.10.1773949749732;
        Thu, 19 Mar 2026 12:49:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a28530ce19sm96274e87.78.2026.03.19.12.49.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 12:49:08 -0700 (PDT)
Date: Thu, 19 Mar 2026 21:49:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5] arm64: dts: qcom: glymur-crd: Enable keyboard,
 trackpad and touchscreen
Message-ID: <funq3yjordebprhusdkkapw5m4fuqpavhyeguoo7tdffv2ebub@ozh5c7a3py6f>
References: <20260319-glymur-dts-crd-enable-kbd-tp-ts-v5-1-4a440594348b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260319-glymur-dts-crd-enable-kbd-tp-ts-v5-1-4a440594348b@oss.qualcomm.com>
X-Proofpoint-GUID: p6XUiFzJanDZRIT8d9aJEdt04t_znO4c
X-Proofpoint-ORIG-GUID: p6XUiFzJanDZRIT8d9aJEdt04t_znO4c
X-Authority-Analysis: v=2.4 cv=ApTjHe9P c=1 sm=1 tr=0 ts=69bc5337 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=gMdvNNrOH-log2pszT8A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDE1OCBTYWx0ZWRfXyWB7KEMJrvow
 aLa9tKFuQRJNkQsK7B5Ab7qVNFuGEBGpaoWfcbyE8cc4iup7EgEjArP82nI7atgVrhip/orcGZj
 TY/Bcy2H4MaWfw3y+Dqr5eKAwxzdtYxck4/OqRDdZBhUtfxmeExDoJqm/Wvc7d5a4InmW731Pyf
 CoiwhjqfWB8yXgR/slVrKrejQwgDVk4ZVvj5RfU+/HSu3g6YQ9DnXX/lfyYbhfZ952+UVrJFD25
 b1vCFxOWsBF/13jHi0XBlh7ISxVZA1DZaGjU1bdjP5qjNewIn5lYD9SKrUjs622Dn9qV7BXoxjo
 P5SitcOyj1KDGIgO3IOi6zOIKVRyYtYb5PGBSrchmvQF7xRtrkzqKWwkoI3ag2G5BsYL/ugPUp1
 bumFrOq/RLc3OkNtSCvxb3ckkY+b/VPLF4jRfm+UPSM5l/nTS03350TxpwdVTPMgDMH5oE03w/l
 cpGWxpGBEpX8UQrkgOw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_03,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 impostorscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190158
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278015-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,2c:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.38:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 73F072D1CBB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 19, 2026 at 05:30:48PM +0200, Abel Vesa wrote:
> On CRD, the keyboard, trackpad and touchscreen are connected over I2C
> and all share a 3.3V regulator.
> 
> So describe the regulator and each input device along with their
> pinctrl states.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
> Changes in v5:
> - Since this depends on Displat DT patchset and since that one
>   had to be respun in order to drop the non-merging phy patch
>   dependency, this one had to be respun as well so that the dependency
>   tree is correct.

Where do the dependencies come from? Would it be easier to merge this
one first? Or are there overlapping supplies?

> - Link to v4: https://patch.msgid.link/20260319-glymur-dts-crd-enable-kbd-tp-ts-v4-1-dfe67a134996@oss.qualcomm.com
> 
> Changes in v4:
> - Rebased on next-20260318.
> - Dropped all dependencies except the USB DT and Display DT patchesets,
>   which are needed for this one to apply cleanly.
> - Link to v3: https://patch.msgid.link/20260313-glymur-dts-crd-enable-kbd-tp-ts-v3-1-66c5ddfee97d@oss.qualcomm.com
> 
> Changes in v3:
> - Picked up Dmitry's and Konrad's R-b tags.
> - Drop the output-high and add bias-disable to the reset pin of the
>   touchscreen default state.
> - Link to v2: https://patch.msgid.link/20260312-glymur-dts-crd-enable-kbd-tp-ts-v2-1-2277bee4c564@oss.qualcomm.com
> 
> Changes in v2:
> - Rebased on next-20260311
> - Re-ordered pinctrl properties in vreg_misc_3p3, as Konrad suggested.
> - Dropped next level dependency patchset.
> - Link to v1: https://patch.msgid.link/20260309-glymur-dts-crd-enable-kbd-tp-ts-v1-1-56e03f769a76@oss.qualcomm.com
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 117 ++++++++++++++++++++++++++++++++
>  1 file changed, 117 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> index 38cdcf662ba7..5089ff7cdca3 100644
> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> @@ -13,6 +13,8 @@
>  #include "pmk8850.dtsi"         /* SPMI0: SID-0                  */
>  #include "smb2370.dtsi"         /* SPMI2: SID-9/10/11            */
>  
> +#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> +
>  / {
>  	model = "Qualcomm Technologies, Inc. Glymur CRD";
>  	compatible = "qcom,glymur-crd", "qcom,glymur";
> @@ -139,6 +141,23 @@ vreg_edp_3p3: regulator-edp-3p3 {
>  		regulator-boot-on;
>  	};
>  
> +	vreg_misc_3p3: regulator-misc-3p3 {
> +		 compatible = "regulator-fixed";

Extra whitespaces before the 'compatible'

> +
> +		regulator-name = "VREG_MISC_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&pmh0110_f_e0_gpios 6 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&misc_3p3_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-boot-on;
> +		regulator-always-on;

Why is it always on? Should it be on only if the HID is used?

> +	};
> +
>  	vreg_nvme: regulator-nvme {
>  		compatible = "regulator-fixed";
>  
> @@ -446,6 +465,64 @@ vreg_l4h_e0_1p2: ldo4 {
>  	};
>  };
>  
> +&i2c0 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	touchpad@2c {
> +		compatible = "hid-over-i2c";
> +		reg = <0x2c>;
> +
> +		hid-descr-addr = <0x20>;
> +		interrupts-extended = <&tlmm 3 IRQ_TYPE_LEVEL_LOW>;
> +
> +		vdd-supply = <&vreg_misc_3p3>;
> +		vddl-supply = <&vreg_l15b_e0_1p8>;
> +
> +		pinctrl-0 = <&tpad_default>;
> +		pinctrl-names = "default";
> +
> +		wakeup-source;
> +	};
> +
> +	keyboard@3a {
> +		compatible = "hid-over-i2c";
> +		reg = <0x3a>;
> +
> +		hid-descr-addr = <0x1>;
> +		interrupts-extended = <&tlmm 67 IRQ_TYPE_LEVEL_LOW>;
> +
> +		vdd-supply = <&vreg_misc_3p3>;
> +		vddl-supply = <&vreg_l15b_e0_1p8>;
> +
> +		pinctrl-0 = <&kybd_default>;
> +		pinctrl-names = "default";
> +
> +		wakeup-source;
> +	};
> +};
> +
> +&i2c8 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	touchscreen@38 {
> +		compatible = "hid-over-i2c";
> +		reg = <0x38>;
> +
> +		hid-descr-addr = <0x1>;
> +		interrupts-extended = <&tlmm 51 IRQ_TYPE_LEVEL_LOW>;
> +
> +		vdd-supply = <&vreg_misc_3p3>;
> +		vddl-supply = <&vreg_l15b_e0_1p8>;
> +
> +		pinctrl-0 = <&ts0_default>;
> +		pinctrl-names = "default";
> +	};
> +};
> +
>  &i2c5 {
>  	clock-frequency = <400000>;
>  
> @@ -626,6 +703,19 @@ key_vol_up_default: key-vol-up-default-state {
>  	};
>  };
>  
> +&pmh0110_f_e0_gpios {
> +	misc_3p3_reg_en: misc-3p3-reg-en-state {
> +		pins = "gpio6";
> +		function = "normal";
> +		bias-disable;
> +		input-disable;
> +		output-enable;
> +		drive-push-pull;
> +		power-source = <1>; /* 1.8 V */
> +		qcom,drive-strength = <PMIC_GPIO_STRENGTH_LOW>;
> +	};
> +};
> +
>  &pmk8850_rtc {
>  	qcom,no-alarm;
>  };
> @@ -664,6 +754,33 @@ edp_reg_en: edp-reg-en-state {
>  		bias-disable;
>  	};
>  
> +	kybd_default: kybd-default-state {
> +		pins = "gpio67";
> +		function = "gpio";
> +		bias-disable;
> +	};
> +
> +	tpad_default: tpad-default-state {
> +		pins = "gpio3";
> +		function = "gpio";
> +		bias-disable;
> +	};
> +
> +	ts0_default: ts0-default-state {
> +		int-n-pins {
> +			pins = "gpio51";

What was the sorting order here? I assume you had one.

> +			function = "gpio";
> +			bias-disable;
> +		};
> +
> +		reset-n-pins {
> +			pins = "gpio48";
> +			function = "gpio";
> +			drive-strength = <16>;
> +			bias-disable;
> +		};
> +	};
> +
>  	pcie4_default: pcie4-default-state {
>  		clkreq-n-pins {
>  			pins = "gpio147";
> 
> ---
> base-commit: 54526d6c29ce58d5399cd4e2237d631266ebaaef
> change-id: 20260309-glymur-dts-crd-enable-kbd-tp-ts-c80c0cb78940
> prerequisite-change-id:  20260109-dts-qcom-glymur-add-usb-support-617b6d9d032c:v6
> prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
> prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f
> prerequisite-change-id: 20260109-dts-qcom-glymur-crd-add-edp-03f0adde9750:v6
> prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
> prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f
> prerequisite-patch-id: 346f2db0933c551a039f63b945f989a5c8320657
> prerequisite-patch-id: 919020405b70d588fa4356a5cbfb44e67006102e
> 
> Best regards,
> --  
> Abel Vesa <abel.vesa@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

