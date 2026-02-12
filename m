Return-Path: <devicetree+bounces-265006-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICKULmerjWkK5wAAu9opvQ
	(envelope-from <devicetree+bounces-265006-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:28:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1941E12C7DD
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:28:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87324300DDF1
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:28:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 604CA2E06EF;
	Thu, 12 Feb 2026 10:28:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bK7JM0pS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jm8FhJ7a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C15A2DEA87
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770892080; cv=pass; b=ZxmzmXEX8qvxi3vDCeG2CRxn6u/NPc5P3OVD33BA5AUN/NnhuFsDL3KlpOjYX7LBmlJZbayAxQqO4sOSnfrOumDAQhIy07XWbIOQ6B9JLOsGhWwrHt+QvY8WQovkillfwSm0HE9PY/Gn/JW8IxKroGsR/dV2X6mTYVHMw3Q34/c=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770892080; c=relaxed/simple;
	bh=WWOr8rF6y3CxOgejDCHpXTE4vSscuQi8XfIQ5T0j/cU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uR9iRdeS0rdQL59ZszvCr6/3Hk9G96ubT8l27GDAZnSBqv3PKLcULkgf9GMT6QZqc66Y/lN6ilHSJsGytfYMui7KC2qtjx8zLOKckUv9R1XzAvOFhbWIG66yy2qYzOgWvBJ1vVxORCXFxyU6H+hslTYTfsenwBXjAJbG8jAaivE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bK7JM0pS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jm8FhJ7a; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CAIHCu657755
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:27:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kst5+iQPFZYigqiEsqdKWeo2P6vTG7HS6hERc/dTS1I=; b=bK7JM0pS8G6M9Yds
	78JnS925ux/O7Ymv6CC3XB1a/A1QtzBffECbbzjoO4xdZQBr/Z9Bs0oR6XM17N4b
	d9N+1uB+CEYofVmhZpI2lf5Z2mrojaKR8ihHVoMtUOzwkcJn5ANcTGrHGRn/5IvR
	rbXFIMOobOaJoWeQQPGpqtTrSbpyqAdau6JF7Jly/kkW9urd3Ymk6bVQwAPuTTPg
	FsAaRhE8D/OEAV/IyQFABoY7AudJ95MuvrLz+P4BSD1ICaN5/cs/R45nTZXzbq+c
	/g4HrttSNBO5DftaE9ipGY/M6JWr5Pkpas0iuOesZLnRH1kaTqo5/eC59kjYPWSs
	XJZm9A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9d09g11g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:27:58 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89473f5a755so255612476d6.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 02:27:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770892077; cv=none;
        d=google.com; s=arc-20240605;
        b=OiQHuMa3mTxImmfbYhPLn1YEqT8N5Up8P27fmLkTbHuRLBb3x6CP1q8j67eUetSUZ8
         dhWEmZHxN7/fvRvtL0XCYlspkjQ8aXTba4MHZvVt9k5TA9NqbEZrLLOHz6t0OUe/l+tQ
         NlgQIM7VL5aggtKolh/pnGYjnzE7HougWRvUBWiecIoIUEi1QltLRytCqbteJVvKk5q3
         x+EL9wEmY1jC5itQQmomTmVBYVR9fdXFjpEyYfvv6Weazyt8E85jy3Kv8qmcbzjDqRLE
         4HTWJc23Vehlv6CNOdpIEt2wz70F+DW+Pkp+SCLaF732cj3LYt/bIewQhvWqpYHBlEJ5
         gD+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=kst5+iQPFZYigqiEsqdKWeo2P6vTG7HS6hERc/dTS1I=;
        fh=X41C8H9lcg0QTyoOxzVzyRBNsagkZK+K0fleC35UVhQ=;
        b=Qg8bl29hADC3O5+ijRDjzE6Z+XaYPfGu89CT83UAlIh8RqktC/prXIexJj9X3McZ21
         WmpxNWpWABVumZqRPXzxRh5ub8bqu2Vyk4ljFZNoU1rvSorEPmiywPwUJz9YbtdR6Lsu
         USMpEy7jBy+0T5jLzwN0gxs0BPZUAVp//Jk0t2qdlX5fi2NrJ4pIUOA3VSPjKsR0mpyB
         +vV+/9cnWuVNVo3qoIAvnEDL/AukdlGaXSSPKqotWV549pydytmmw99lxgMbr4vz++er
         U96rkO5cyYiBosYFRD/G9AyUXKxpvPHo6frGJgdNSAdv8F18BGLgFVm1O9IAZHfV43O7
         WO2g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770892077; x=1771496877; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kst5+iQPFZYigqiEsqdKWeo2P6vTG7HS6hERc/dTS1I=;
        b=jm8FhJ7aKsXVi/I2RF044TomZcvGKHMsGN76bb12vmw+G7B4hsi1m2EOp9RYSPZR71
         QNmoShLk/+Uf9gt2fcsPBAChnppcGlYb/FX6W1CGYN5GimZSCMzFH0UFnOV5qfqXzGm4
         AZG3p8N7PaN1oLAEhY6GkRFnMcF9p+UypcGhAxHIKADmzNWtWN36HXut+8jNnBxae97J
         XLI5x9/rsqEF6IdBzC+mMlkgACtwZ3pH17qmQlOzyu5Q8f3Tv4xUO404/8NWypP4tqRL
         4hetDpFJ2lZDOXFThV/z3uGDGNYPoN4L+J7eVe36V/VytwOw7pAIRMJN8ogNZGBzxlRZ
         xFZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770892077; x=1771496877;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kst5+iQPFZYigqiEsqdKWeo2P6vTG7HS6hERc/dTS1I=;
        b=kjBpLmkh1VrHk6HTqCGRQRkQNmtL9msywrJx2PdJElu4yD/gE8vgb+TwZ/TF1hhpS9
         m7uy52GZcIAnNtRAdFao/l8E2NWM7FAFSKUwlHNYtXonlMF4ppmO0uGXSo/f3f0QIhTW
         YKcMeZGkfeU8fOzDk6rS6+cI3CfOTwrOxOUYF/yeUgKNZjsbm2xuUMNbjUCn7DUZiUOw
         SkdPPVPgHqRPp3VCznh4Js/pKUrJ2m3QgwsfcHlWWkuHB4iKPvqQUedbBLo3kKpwHZgH
         NwXU9AFDM9JxUNKJex/KZnOksW7wd7+pQcTvqyIgkwEQNIN/9frbKzLXWpIkyTvYCeJb
         Il4w==
X-Forwarded-Encrypted: i=1; AJvYcCUBxSEn5r9cVvsl3pTxpoWSzeLcQT6EmGOpNtuJ4MKvuuFi12+VPdzeBUQf+ds4usiEhQ3bXNeMWhZZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5h1cBuy8Xv+YSpHLPrWjOw+i6NoOtjwqO41RfXUuua79lEX4G
	TnJF36yhCCzjgEo1C36ChBtWBhvuVoulaQ1TfTgK69drTh+kK9LhH1ikC36Q+4Ws+9Ji/Hr2EwQ
	RxwU4vrYm3/rJ8+Y3CN1gr8Trsfh8wSU0DuT39gftw8DwPsd1tsuzc3G9/FMH/xaoacLWWHOqDV
	ywhMyOzWlCIgdgVmrY4hN6np8kDuIYjb9SjNCewvg=
X-Gm-Gg: AZuq6aLAI77d+MVCDGm0PIJdZ9D6o4FuKVZTKwn1rqnDbQjBDjXRteLZpniYO8wWz6F
	AEygYLulC42HeujusblvXn/QgmLRMJ9iARsGIX9fNhEEqcTQFreYmnkNNU8JWBRkawb7Vt9tgCU
	gpw3mbbpcwjNXKN4n2DR+E7H8oq2P910kFwxEFAoWY0a3hSgcuWlW8aM6NTukLCa7i3P+Mwo+hf
	OkWGBirjG2MXoVCRDTGOS0l0cs2h4ED5nbV3SE6
X-Received: by 2002:a05:6214:2349:b0:890:8285:e1a3 with SMTP id 6a1803df08f44-897279cf18bmr32192926d6.63.1770892077234;
        Thu, 12 Feb 2026 02:27:57 -0800 (PST)
X-Received: by 2002:a05:6214:2349:b0:890:8285:e1a3 with SMTP id
 6a1803df08f44-897279cf18bmr32192706d6.63.1770892076716; Thu, 12 Feb 2026
 02:27:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260124203925.2614008-1-quic_amakhija@quicinc.com> <20260124203925.2614008-2-quic_amakhija@quicinc.com>
In-Reply-To: <20260124203925.2614008-2-quic_amakhija@quicinc.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 11:27:45 +0100
X-Gm-Features: AZwV_Qg3XNAJ5TJBNaJtsCR_H2IdzjFUFy3KhcdoQ-kiThv0UeyFl9FBwh_7Zog
Message-ID: <CAFEp6-16r0eo3z0muGWk0G2-NGa-G7PdyM92z19xKPpE46v3mg@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] arm64: dts: qcom: qcs8300: add Display Serial
 Interface device nodes
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com,
        dmitry.baryshkov@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonathan@marek.ca, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA3NiBTYWx0ZWRfXwioaCOcx3yTI
 33/afadDpzbV5+vVnV7WohMbft3geV4xC8++/zlVp0lWIb1CpQGFlxURC314awwQbQpHmsHOrYw
 K4Td74kwhhnh4qgBQEt+QlCTZQWgS1KTHEC5NaLv69ff75ggSv6K+AJXwSXV47E2vvbxBCbSK+A
 18HHC43x9LE2JMubs9QxQkJX5UVFqgjo/3cQLAz9veI1wuLzk2K1m6XqukEwAlV4jNQBTWu/QZk
 5S0XDZiouxS6CF00sn5DQFXhxcIx9KxeeIAqFtqvafaj3s15DbSKqkr7BxuzeeCI1lw+G4OJqMe
 MQX8ri8QiddK9jCutHHM5Jn3kzKbWK83ZqZLmn3okKosMbluA1W+iqS7Oc6Th0CKHLJbN5H5xhM
 9khzzlYcudQEggKAwD19z39uLngCDMfCqVTk9oOmiGVNY9GPYbZmsvpW3AzvhDGTU+fK9VUI26r
 BdW7V1rz+BwVAFKD1XA==
X-Proofpoint-GUID: KT4bRWB5sNK-v5Kffv6MPwaMm5JEqwmU
X-Authority-Analysis: v=2.4 cv=Y6j1cxeN c=1 sm=1 tr=0 ts=698dab2e cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22
 a=GgsMoib0sEa3-_RKJdDe:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=h4Cvp3v_9CCKUQf7-U0A:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: KT4bRWB5sNK-v5Kffv6MPwaMm5JEqwmU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 adultscore=0 suspectscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120076
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265006-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,gmail.com,oss.qualcomm.com,poorly.run,somainline.org,kernel.org,intel.com,linaro.org,ideasonboard.com,marek.ca,kwiboo.se,quicinc.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,quicinc.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,af00000:email]
X-Rspamd-Queue-Id: 1941E12C7DD
X-Rspamd-Action: no action

Hi Ayushi,

On Sat, Jan 24, 2026 at 9:39=E2=80=AFPM Ayushi Makhija
<quic_amakhija@quicinc.com> wrote:
>
> Add device tree nodes for the DSI0 controller with their corresponding
> PHY found on Qualcomm QCS8300 SoC.
>
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 105 ++++++++++++++++++++++++++-
>  1 file changed, 104 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/q=
com/monaco.dtsi
> index 5d2df4305d1c..7dda05bda3e7 100644
> --- a/arch/arm64/boot/dts/qcom/monaco.dtsi
> +++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
> @@ -3,6 +3,7 @@
>   * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserv=
ed.
>   */
>
> +#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
>  #include <dt-bindings/clock/qcom,qcs8300-gcc.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,sa8775p-camcc.h>
> @@ -5573,9 +5574,19 @@ port@0 {
>                                                 reg =3D <0>;
>
>                                                 dpu_intf0_out: endpoint {
> +
>                                                         remote-endpoint =
=3D <&mdss_dp0_in>;
>                                                 };
>                                         };
> +
> +                                       port@1 {
> +                                               reg =3D <1>;
> +
> +                                               dpu_intf1_out: endpoint {
> +
> +                                                       remote-endpoint =
=3D <&mdss_dsi0_in>;
> +                                               };
> +                                       };
>                                 };
>
>                                 mdp_opp_table: opp-table {
> @@ -5603,6 +5614,96 @@ opp-650000000 {
>                                 };
>                         };
>
> +                       mdss_dsi0: dsi@ae94000 {
> +                               compatible =3D "qcom,qcs8300-dsi-ctrl",
> +                                            "qcom,sa8775p-dsi-ctrl",
> +                                            "qcom,mdss-dsi-ctrl";
> +                               reg =3D <0x0 0x0ae94000 0x0 0x400>;
> +                               reg-names =3D "dsi_ctrl";
> +
> +                               interrupt-parent =3D <&mdss>;
> +                               interrupts =3D <4>;
> +
> +                               clocks =3D <&dispcc MDSS_DISP_CC_MDSS_BYT=
E0_CLK>,
> +                                        <&dispcc MDSS_DISP_CC_MDSS_BYTE0=
_INTF_CLK>,
> +                                        <&dispcc MDSS_DISP_CC_MDSS_PCLK0=
_CLK>,
> +                                        <&dispcc MDSS_DISP_CC_MDSS_ESC0_=
CLK>,
> +                                        <&dispcc MDSS_DISP_CC_MDSS_AHB_C=
LK>,
> +                                        <&gcc GCC_DISP_HF_AXI_CLK>;
> +                               clock-names =3D "byte",
> +                                             "byte_intf",
> +                                             "pixel",
> +                                             "core",
> +                                             "iface",
> +                                             "bus";
> +
> +                               assigned-clocks =3D <&dispcc MDSS_DISP_CC=
_MDSS_BYTE0_CLK_SRC>,
> +                                                 <&dispcc MDSS_DISP_CC_M=
DSS_PCLK0_CLK_SRC>;
> +                               assigned-clock-parents =3D <&mdss_dsi0_ph=
y DSI_BYTE_PLL_CLK>,
> +                                                        <&mdss_dsi0_phy =
DSI_PIXEL_PLL_CLK>;
> +
> +                               phys =3D <&mdss_dsi0_phy>;

I'm quite sure DSI requires a refgen regulator, so add the proper
refgen-supply link.


> +
> +                               operating-points-v2 =3D <&mdss_dsi_opp_ta=
ble>;
> +                               power-domains =3D <&rpmhpd RPMHPD_MMCX>;
> +
> +                               #address-cells =3D <1>;
> +                               #size-cells =3D <0>;
> +
> +                               status =3D "disabled";
> +
> +                               ports {
> +                                       #address-cells =3D <1>;
> +                                       #size-cells =3D <0>;
> +
> +                                       port@0 {
> +                                               reg =3D <0>;
> +
> +                                               mdss_dsi0_in: endpoint {
> +
> +                                                       remote-endpoint =
=3D <&dpu_intf1_out>;
> +                                               };
> +                                       };
> +
> +                                       port@1 {
> +                                               reg =3D <1>;
> +
> +                                               mdss_dsi0_out: endpoint {
> +                                               };
> +                                       };
> +                               };
> +
> +                               mdss_dsi_opp_table: opp-table {
> +                                       compatible =3D "operating-points-=
v2";
> +
> +                                       opp-358000000 {
> +                                               opp-hz =3D /bits/ 64 <358=
000000>;
> +                                               required-opps =3D <&rpmhp=
d_opp_svs_l1>;
> +                                       };
> +                               };
> +                       };
> +
> +                       mdss_dsi0_phy: phy@ae94400 {
> +                               compatible =3D "qcom,qcs8300-dsi-phy-5nm"=
,
> +                                            "qcom,sa8775p-dsi-phy-5nm";
> +                               reg =3D <0x0 0x0ae94400 0x0 0x200>,
> +                                     <0x0 0x0ae94600 0x0 0x280>,
> +                                     <0x0 0x0ae94900 0x0 0x280>;
> +                               reg-names =3D "dsi_phy",
> +                                           "dsi_phy_lane",
> +                                           "dsi_pll";
> +
> +                               #clock-cells =3D <1>;
> +                               #phy-cells =3D <0>;
> +
> +                               clocks =3D <&dispcc MDSS_DISP_CC_MDSS_AHB=
_CLK>,
> +                                        <&rpmhcc RPMH_CXO_CLK>;
> +                               clock-names =3D "iface",
> +                                             "ref";
> +
> +                               status =3D "disabled";
> +                       };
> +
>                         mdss_dp0_phy: phy@aec2a00 {
>                                 compatible =3D "qcom,qcs8300-edp-phy", "q=
com,sa8775p-edp-phy";
>
> @@ -5730,7 +5831,9 @@ dispcc: clock-controller@af00000 {
>                                  <&mdss_dp0_phy 0>,
>                                  <&mdss_dp0_phy 1>,
>                                  <0>, <0>,
> -                                <0>, <0>, <0>, <0>;
> +                                <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
> +                                <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
> +                                <0>, <0>;
>                         power-domains =3D <&rpmhpd RPMHPD_MMCX>;
>                         #clock-cells =3D <1>;
>                         #reset-cells =3D <1>;
> --
> 2.34.1
>
>

