Return-Path: <devicetree+bounces-261167-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id NrU8IwmNfGkBNwIAu9opvQ
	(envelope-from <devicetree+bounces-261167-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:50:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D0CB988D
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:50:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BFC40300EF8B
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C0CA36920E;
	Fri, 30 Jan 2026 10:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R0Xo3T1p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ai+gK9pU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CACFB2E7635
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769770247; cv=none; b=Y0EeU1ECji0iMbjfQnLyqw8aTfquFaNpn8UUa48TASG64hQJPpplurbkN34/Ao8NQvBcQM3BwZtiBvhh1xJbBq4uGuXFqQg1tFqYa7L1dq3pj75ZzxrTWDCho3KeX1vasogFs4M5FRhvZb6idPnCZJFycqaomv+zE28JNs35GUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769770247; c=relaxed/simple;
	bh=g2SP34zbnE5SUp0dBfi9SI+eM2uNK5Mpq9WSEXJHnTs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y5wC2q7avM80cC4/8GQJXvG/vGVfcoR55PE7C/QKi/BJQcy+jMZiFVAqL967a8nxJp6x2CkXF/k3e27NDBvXmar1GjG8S1SrgciE1Wg+srzXQiCucvTip2vZTOvbdcNgaDHCyt9RLciJrfPvKNQqbxb2xAhLypO1uT7YnWHE47w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R0Xo3T1p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ai+gK9pU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60U4bRhl1485339
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:50:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6K2nIO2HcxFSQAQK7Ypw5vh3
	ZYfv/aSlo06WGZswp/U=; b=R0Xo3T1pNB0X6kqe1bf+tKNsdUIT3c2fkbcHlt/E
	3gAU1S3YUGKa4J6l90E+h/G4K0TmY+E47Arjuf7eZ+r4IUW5pOJp/mq/fEZ3/IKy
	x3XpcuCM+TziCFfJRHpbZm09BJqw540/20aKMbgdmrneKEtHZmU/LZO5WVZOSqyE
	PgJ9L0U7yYjtjLHOqyq1TvM+zdXANayW4xB4XDeX8W+jTMWETD0No+EsBVTjdPEh
	DI9IltX0Qfdg8wc+jeX52pjvVJeO+G9F6HfkO1ZMlUl5Wz0fY1cmDCPlDA/nhndG
	4IFQIS5gR0ebHK0Jod5x4CFDGCbNryGioorTPGLU7GaQXA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0nsf92a5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:50:45 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6cfd52556so607152785a.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 02:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769770244; x=1770375044; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6K2nIO2HcxFSQAQK7Ypw5vh3ZYfv/aSlo06WGZswp/U=;
        b=Ai+gK9pUw+Hn8rxN8BPUU2csyjF+DriuWr1j849t9QmZKu8Vke4GvDU59edcxq0VqE
         guQWCYsN6epeOS1EBr5qb89GJYO/jytR2Vk/dxU8K5lFIGCUzuLEJSQ1eZFv/uOrMAVb
         BUO6V2sPFSuXZzEZNSxe84I3i2LqESKKYUKiCq5SJ+a+UwcBL71Cz+P4mf37GEBZCk8/
         pBWiVOIFpqwrC4hIhcJ9jj363WAKC2XXn1wZ+pddBHEONJCVak+k7evpBl5AJTg+oZmq
         F5SeyyVhvWI3SnygLBe/q+3d34QPF/ievOZSs3CPMBXEC2cqMh2y4NETwlieSxPGgzwP
         p1rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769770244; x=1770375044;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6K2nIO2HcxFSQAQK7Ypw5vh3ZYfv/aSlo06WGZswp/U=;
        b=TXMF+ymT8aJkqofGNi2B/EncpCq1NAWU1dpMYON8HeeAoNf+PYebt9aBe0B2pyi/ks
         slsEKb8gucZ/mq9qrXG3LZy0iBfpzfYQkX264GuI8p+u0QGdJhYtiDqmdVKXEpuqmne/
         e9Dy/0mOUQvB9unBc33KR/ysxeC9NQDlSfPU3XI98vtbCYOuKslOdI58XcA52Y02jKiU
         K8hR9TLE7U5jgewYYXOSdiEhk6Jv3biX0yXTdM7wBQ8rmjdffZjzA1M0CHoyfziSyNHY
         lX0bIn02ZmPu6sKoT3l5b68Wk7LblT4Au2cBZuy8ADA/+6QVEiiNo97K+QhkEp3hPbiO
         G2Wg==
X-Forwarded-Encrypted: i=1; AJvYcCVfwX1fxWlBw4kTwIA79GZjB/zkgjpHauQPRhNKuDDBRpbikk8L70OSOWd+zkiIaVi2k9zPP0xXIALe@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6guy1gbxN/6z5kFBocRQ/C9hdiD5UCv1J3fNqhqZkUpi96SKS
	WD5mGfUYiCcZcxi4PX8DOu4rm431fIdhc5ZwFxKNSeQ7jXrAOFTEBJr14PUut+7TqDU4sphEa3q
	IeOzJN3Yj+YlEBhJXrJTHBVoebRSFJU8ZmKGUyRJo8EwzL3aUtJ5qyTbXTfkvIM7Y
X-Gm-Gg: AZuq6aIpAAUXiqnUDzD8H411oA93BL0S+wAjapKXsNDdDeRNVP00mT0McX3ulVKEcMV
	Gkn47RmCx2ODmkzuKwRYtQH/svdIqAh0WrrdsfJ7WHrgKQOIGRnnZlMDp9xCIBn8ogxUyCp/BBd
	nwks3UoQzUJECwPsBhGjbDaKuy2ZSaXQvUuWvcM4/zKkn0D/iRABwIKAnCoTxgMPVh4/5fqz21d
	oTk8jegH5SS6nNrEZ6fEDo3hU37ZuLmWwk4e+C70UIV9/Rtd9TEkvr7WhDVlnMjp204qeZS+N/k
	WVsZLcuEKxUudlN+gUnFw5fw1iJpJ0IMeYhokWpOGaE9AJkric6DA06adLyPU9FjzzQH1cQZ8la
	fo4SfqR0FOmV+MoiVl9AUq4Bvcs4Mcc1bSyg/vxPQDq4IaruoDnIlF2DYWoegw0nx/lqX0b1B3O
	+dTJ+1XNQCOXljzhXE5d8W0/k=
X-Received: by 2002:a05:620a:45a4:b0:8c6:c983:dddb with SMTP id af79cd13be357-8c728723528mr712904785a.0.1769770244086;
        Fri, 30 Jan 2026 02:50:44 -0800 (PST)
X-Received: by 2002:a05:620a:45a4:b0:8c6:c983:dddb with SMTP id af79cd13be357-8c728723528mr712902685a.0.1769770243622;
        Fri, 30 Jan 2026 02:50:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625f8a5f2sm15449471fa.33.2026.01.30.02.50.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 02:50:43 -0800 (PST)
Date: Fri, 30 Jan 2026 12:50:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        venkata.valluru@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        Yi Zhang <zhanyi@qti.qualcomm.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: Enable lvds panel-DV215FHM-R01
 for rb3gen2 industrial mezzanine
Message-ID: <y65lkhfdl7omall7mo23llaeedsith5ujzgdkyjwej46zlbpkh@u5jaaphiaexi>
References: <20260130-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v2-0-a98714fa1531@oss.qualcomm.com>
 <20260130-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v2-1-a98714fa1531@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260130-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v2-1-a98714fa1531@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: uQwJLgrnnbULcrQTua4rZjvj7EHN7Vy8
X-Authority-Analysis: v=2.4 cv=EvjfbCcA c=1 sm=1 tr=0 ts=697c8d05 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=O5SRHumhz1pJrrEzSA8A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: uQwJLgrnnbULcrQTua4rZjvj7EHN7Vy8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA4NyBTYWx0ZWRfX0c8s+4X3rO8Q
 7mryLy39z04tnCSr2gePUK1HdGhZ1Ax+ZWt51TqULM9CQ4ZSsGD3Tcc+guTazl5o5nK7SwttANk
 vQePGmcYi5FdAwmhe8k9Ij1Yo7TXu2+jKBJe65NmC1rxhj6Iapi3+LbB7zPrvDrpylaQCWms8gX
 zikpFMl+cljALdIYI9vlYljHVKaRtgmRXOES2V2FGVaKVndKzWEL9qWAQCij8A/kCx2W+BT3eu5
 luM/9Yh/kBeO2xsS8xaokQ5ORbIU8cIN0SkLoQ91551Vw2bD94U24Gt280aj3Qz1OPVtvPs4H8Z
 iaQVFqxL5SEAB/mb3jxt1A/4lxsSGhsypsdmXtS6oQUUIs9TR/+XlRv5VYLP/4zatLJLXnwU94R
 +Sge0Lm7BgGpD8iPvtxojcGFGRmmrLl+r5V5+ECO/uCUTe+JY7seIHDR2PRllrZ4Ec6ZkoUnZRK
 KuMzifcYbN3/UqeonCQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300087
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261167-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.2:email,0.0.0.29:email,0.0.0.0:email,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,0.0.0.1:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 16D0CB988D
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 03:57:25PM +0530, Gopi Botlagunta wrote:
> Below is the routing diagram of dsi lanes from qcs6490 soc to
> mezzanine.
> 
> DSI0 --> SW1403.4 --> LT9611uxc --> hdmi port
>                  |
>                   --> SW2700.1 --> dsi connector
>                               |
>                                --> LT9211c --> LVDS connector
> 
> Disable hdmi connector for industrial mezzanine and enable
> LT9211c bridge and lvds panel node.
> LT9211c is powered by default with reset gpio connected to 117.
> 
> Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>

Your SoB should be the last one.

> Co-developed-by: Yi Zhang <zhanyi@qti.qualcomm.com>
> Signed-off-by: Yi Zhang <zhanyi@qti.qualcomm.com>
> ---
>  .../qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso | 106 +++++++++++++++++++++
>  1 file changed, 106 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> index 619a42b5ef48..cc8ee1643167 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> @@ -8,6 +8,112 @@
>  #include <dt-bindings/clock/qcom,gcc-sc7280.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>  
> +/ {
> +
> +	hdmi-connector {
> +		status = "disabled";
> +	};
> +
> +	panel_lvds: panel-lvds@0 {
> +		compatible = "panel-lvds";

This doesn't match bindings. I think it was pointed out for the previous
revision.

> +		data-mapping = "vesa-24";
> +		width-mm = <476>;
> +		height-mm = <268>;
> +
> +		status = "okay";
> +
> +		panel-timing {
> +			clock-frequency = <148500000>;
> +			hactive = <1920>;
> +			vactive = <1080>;
> +			hfront-porch = <88>;
> +			hback-porch = <148>;
> +			hsync-len = <44>;
> +			vfront-porch = <4>;
> +			vback-porch = <36>;
> +			vsync-len = <5>;
> +			de-active = <1>;
> +		};
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				dual-lvds-odd-pixels;
> +				panel_in_lvds_odd: endpoint {
> +					remote-endpoint = <&lt9211c_out_odd>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +
> +				dual-lvds-even-pixels;
> +				panel_in_lvds_even: endpoint {
> +					remote-endpoint = <&lt9211c_out_even>;
> +				};
> +
> +			};
> +		};
> +	};
> +
> +};
> +
> +&i2c1 {
> +	status = "okay";
> +
> +	lvds_bridge: lvds-bridge@29 {
> +		compatible = "lontium,lt9211c";
> +		reg = <0x29>;
> +		reset-gpios = <&tlmm 117 1>;

GPIO_ACTIVE_LOW

pinctrl?

> +
> +		status = "okay";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				lt9211c_in: endpoint {
> +					data-lanes = <0 1 2 3>;
> +					remote-endpoint = <&mdss_dsi0_out>;
> +				};
> +			};
> +
> +			port@2 {
> +				reg = <2>;
> +
> +				lt9211c_out_odd: endpoint {
> +					remote-endpoint = <&panel_in_lvds_odd>;
> +				};
> +			};
> +
> +			port@3 {
> +				reg = <3>;
> +
> +				lt9211c_out_even: endpoint {
> +					remote-endpoint = <&panel_in_lvds_even>;
> +				};
> +			};
> +		};
> +	};
> +
> +
> +};
> +
> +&lt9611_codec {
> +	status = "disabled";
> +};

Can't industrial mezz be used without the LVDS panel?
You need to create overlay for this one, adding the panel (properly
described, read the bindings) and disabling HDMI / lt9611uxc.

> +
> +&mdss_dsi0_out {
> +	remote-endpoint = <&lt9211c_in>;
> +};
> +
>  &spi11 {
>  	#address-cells = <1>;
>  	#size-cells = <0>;
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

