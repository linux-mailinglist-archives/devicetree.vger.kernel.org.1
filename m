Return-Path: <devicetree+bounces-257368-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLftHFlqcWmaGgAAu9opvQ
	(envelope-from <devicetree+bounces-257368-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 01:07:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0215FD08
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 01:07:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D56D7865F89
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C858426D05;
	Tue, 20 Jan 2026 12:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JpN3GeC9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E6n5x8tF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 828CE3D7D82
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768910879; cv=none; b=TV/ZPhak4zFfedNwn/VkqC48LaCRwQoW7NrZhT6fsXgqnGonqJ88FpvXD+nSu58aPJSRYTTlg8PItekBDnnaJDrRjXAkyPTtDvZma3ZDDnkO1CxsOK4cgYU/66VBNbtxcE5vAF8w0XexK/jpHKhOwZl/P0aSYO388fe5JVhnpng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768910879; c=relaxed/simple;
	bh=b05Cognv3tUiO7IqOvpDVuBkV64SlDGjjUJiu+fSfxE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=he6fFH5ZCpxrh2up+LghUFK6OvFjJCvotQi3fuQXZZjdXyy8RdUjAJwachO7L7WcTvY9HD3C1OJAtkN9XWx4/TrRF9PKda2rhs0i0r5wyeKHhVylQ2YcR+//qNues2wxDNK2gf3aU6PgceeT2LPWUJVC12DPbZzO2qaEASpGbCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JpN3GeC9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E6n5x8tF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K99qY53256421
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:07:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vehV7GIcrMj79jW1UrHrfHlLOaXKMjfHHi3wPy7nX3A=; b=JpN3GeC9kNUxdFB5
	wzVTVPnXktd+UuGyYaKJzFlsAnT3fQVHOkDmPLEsGbzdbd20HvaO8teNgipeeMSB
	++iQThtWzw/yN7FWuMchQaaLNV5CmA/g3LrOT4ATrbhzfiRY9EaXmRzGMLmRmf3O
	SfuO+C+kt5w7VBSLuF9iH1zvmb5R/tXYJR5K3r0OsA4QX5iB7+u2ca2zuDdDN2Ix
	pu1a5DNIo5GRz7FX73OdF4oJT16jKLeWIBMDOhKFmChCCoGfUOv/6ifHVDei0pJB
	Z2g54C9yaKlsuG2N9/LSZGdAP7RKWH38AFHcYq0Ctff4xdxUX7DFIuIts6/gCz5+
	6wMRLA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt6u7rg5p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:07:56 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c337cde7e40so2744780a12.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768910875; x=1769515675; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vehV7GIcrMj79jW1UrHrfHlLOaXKMjfHHi3wPy7nX3A=;
        b=E6n5x8tFvtzqWUPTg7BCSdnSPjrS+6+NTuEcD0HO9B68j6MATDaT88MtPDvEUiV0Gj
         L9d1ZbXz1ITtA2287LqFDAmM/FUlQdgbXYqHdfFKnUJgCBkPie+zXpUmLKlHexS+yD2P
         iAJArlzo7krWQeZUDjKOUaeP8pAQteOly8oFcw7nqTInllEmeNyKvVP3gxPWqB29/Jw/
         YE84F2VkNLNjLK3N/jh/4Ar8cCSPzjP5k2KUPRsz6YGeVAVpbXRKGZG7uV9tcovu55kg
         TiKI9U6K1MxkcCCrak74Rzugo2nJ0L87vDb/rpSmtnnWnJSHUpWS6Hw9cPIHK3PegkPe
         7T0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768910875; x=1769515675;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vehV7GIcrMj79jW1UrHrfHlLOaXKMjfHHi3wPy7nX3A=;
        b=qgDX9vPAWhRgcC9UOCGaiW7o4hFsj421lnp44m+gOkNHsWZp9tsKKc+lBYuVed6tFW
         4xz8zk/45sWrVHSoMtQ0mVhxsTmEfjMfHznNzriAGnCUuuK2CLDMY5F6QkXS2GcyN5bK
         QYhp9jbyY2xxODL5FTLQaTPk2AUrxTNU3kX20xd2SqElNNxae+XLwvKY0Q7zN6NPUv5H
         NRkSaA1BKsqc2tKd3r02nfz/SYi/3NbpRC6FJbPkCW9JJvrkerO1RZJKPsmeMXckk3y1
         PNOAEcQ63j0nRgLqr/LUGcmBENIrv6jwodAxx57DReMOP8zug4RpOH0hG6fgwTyiKueE
         Crxw==
X-Forwarded-Encrypted: i=1; AJvYcCUlofa6yQAWtEzF7fBPPJUxdkEvykJkKEV1uAsrLst9jwqEB5PH4zZZv0epXt0mHe3OKUnNdXR80j33@vger.kernel.org
X-Gm-Message-State: AOJu0YxS9BqYmpeB73bsjV4l4/2qqNddvEjlWwIwlbSRyOF3pI/HAfho
	IVn2LunYepuyRZt6hM9xTU1aLivZBaZXcMSD+oZWFTxoIaxp3NXVMU9ZwYJBwd+RzFtDL6Qh/Vj
	rvoB5cgJD1hUJoSfHH1ZreiZXa8eokLmo8nPLU6BJKJcHNXYUkjm5N5XhHLiBflCo
X-Gm-Gg: AZuq6aIevYdn/Iz55KG3Xg56/gQc1lTsS4gFFdeL1qZNjS1ytTpmwYpC3byEdHGa08p
	GfTVaXMCgcs+HvHqcRqHfqG3hHKph9CaxR8w9XIP0wdgQjMOIL5akY/jsKSs6CW9e7rRN+Bd4eg
	gaPTI4PaXAiMJ7HKGMAisFjqzkMtFlo8QJ4arq/skwgSTgeET0h1UCWD2IzleKoCJgSiKXP5Q10
	tiO0tJNUBsiPhLZMGxOZuJsTTyLK2smbuqjTCd8EjXf/E8CH1YHyo1NiRKfxcM28XVO9/UNnJ6G
	Jgustzm6aNIf7Iq35cROdTwA9vNR0RKk7w1CTB+9cxWXvbSaPK4NtboAHyKgSfSF/rcdOr2h1hv
	cm2+73KuTbnQxCzUfHteXL1AGDd9IGtqMydYwHj/ZtpZKjlNc94x7Yb89f5Jhi64Fgedb7mi+gK
	lyqB+E6SJsQ2uJSGs+/nJ9VJht7buY
X-Received: by 2002:a17:90a:ec83:b0:349:2136:83eb with SMTP id 98e67ed59e1d1-352c4079c64mr1440330a91.29.1768910874935;
        Tue, 20 Jan 2026 04:07:54 -0800 (PST)
X-Received: by 2002:a17:90a:ec83:b0:349:2136:83eb with SMTP id 98e67ed59e1d1-352c4079c64mr1440300a91.29.1768910874302;
        Tue, 20 Jan 2026 04:07:54 -0800 (PST)
Received: from [10.190.200.191] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf354b16sm11820489a12.30.2026.01.20.04.07.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 04:07:53 -0800 (PST)
Message-ID: <1299cddb-8205-47bc-89c4-98b4ddcd688c@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 17:37:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT 3/3] arm64: dts: qcom: glymur-crd: Enable USB support
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
References: <20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-add-usb-support-v1-3-98d6d387df01@oss.qualcomm.com>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <20260113-dts-qcom-glymur-add-usb-support-v1-3-98d6d387df01@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=P/w3RyAu c=1 sm=1 tr=0 ts=696f701c cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=eW232guSyCytQ_mfRHkA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDEwMCBTYWx0ZWRfX+cTGGyY2c6m5
 2CmG+iN1JvEfK638quzEYY30mPT5noy4LC2zt+md+GBccYz9Fx2MZTBLoeclzcGC41qucFNwNXZ
 WMlXWRunXV2e/iKIMl2mMiuH8Xy+IMA60Wd9xwkYKCeXrch6afdOeih7X11WEOBTmoKsXvOTtCd
 mF5xt7cksDyyujyxVDcTaNokn+UF1Gp0LgBAc84CeGD/Qu/IWMzs6y1XizcV5WBuspn6iN7YUZZ
 23669CFUv5MygKUfRWtbuYnjV1LZxWb1lBwLH+1VFMdMZOHxWEMnTjJlCIS28E4ggE0+3AWwcNG
 RgbJwqTV4aEvvLqFzk8hAlSFe3KJ+HoAj/6UMmDOf9iuPR+PZ06XSBD2uHxMqZ/4z89JcMJOZqo
 Dz8MK3xI1vv+wTVOUWYki+67tZVR2q10LLUNl6PxZlMblBGjqjyvfjX4aRVyLlwT5EVdfY0Rw/o
 5CnqCAnkFhtxji7X3hg==
X-Proofpoint-ORIG-GUID: FB0RIiGvQAtWRQbcJH4obUWo5iEAAsEQ
X-Proofpoint-GUID: FB0RIiGvQAtWRQbcJH4obUWo5iEAAsEQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_03,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200100
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DATE_IN_PAST(1.00)[36];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-257368-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pankaj.patil@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DE0215FD08
X-Rspamd-Action: no action

On 1/13/2026 6:03 PM, Abel Vesa wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> The Qualcomm Glymur Compute Reference Device comes with 3 Type-C ports,
> one USB Type-A, and a fingerprint reader connected over USB. Each of these
> 3 Type-C ports are connected to one of the USB combo PHYs and one of the
> M31 eUSB2 PHYs. The Type-A is connected to the USB Multi-port controller
> via one of the M31 eUSB2 PHYs and one combo PHY. The fingerprint reader
> is connected to the USB_2 controller. All M31 eUSB2 PHYs have associated
> eUSB2 to USB 2.0 repeaters, which are either part of SMB2360 PMICs or
> dedicated NXP PTN3222.
> 
> So enable all needed controllers, PHYs and repeaters, while describing
> their supplies. Also describe the PMIC glink graph for Type-C connectors.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 283 ++++++++++++++++++++++++++++++++
>  1 file changed, 283 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> index 7c168e813f1e..3188bfa27bea 100644
> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> @@ -56,6 +56,97 @@ key-volume-up {
>  		};
>  	};
>  
> +	pmic-glink {
> +		compatible = "qcom,glymur-pmic-glink";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		connector@0 {
> +			compatible = "usb-c-connector";
> +			reg = <0>;
> +
> +			power-role = "dual";
> +			data-role = "dual";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					pmic_glink_hs_in: endpoint {
> +						remote-endpoint = <&usb1_ss0_dwc3_hs>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					pmic_glink_ss_in: endpoint {
> +						remote-endpoint = <&usb1_ss0_qmpphy_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		connector@1 {
> +			compatible = "usb-c-connector";
> +			reg = <1>;
> +			power-role = "dual";
> +			data-role = "dual";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					pmic_glink_hs_in1: endpoint {
> +						remote-endpoint = <&usb1_ss1_dwc3_hs>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					pmic_glink_ss_in1: endpoint {
> +						remote-endpoint = <&usb1_ss1_qmpphy_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		connector@2 {
> +			compatible = "usb-c-connector";
> +			reg = <2>;
> +			power-role = "dual";
> +			data-role = "dual";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					pmic_glink_hs_in2: endpoint {
> +						remote-endpoint = <&usb1_ss2_dwc3_hs>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					pmic_glink_ss_in2: endpoint {
> +						remote-endpoint = <&usb1_ss2_qmpphy_out>;
> +					};
> +				};
> +			};
> +		};
> +	};
> +
>  	vreg_nvme: regulator-nvme {
>  		compatible = "regulator-fixed";
>  
> @@ -331,6 +422,72 @@ trip1 {
>  	};
>  };
>  
> +&i2c5 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	ptn3222_0: redriver@43 {
> +		compatible = "nxp,ptn3222";
> +		reg = <0x43>;
> +
> +		reset-gpios = <&tlmm 8 GPIO_ACTIVE_LOW>;
> +
> +		vdd3v3-supply = <&vreg_l8b_e0_1p50>;
> +		vdd1v8-supply = <&vreg_l15b_e0_1p8>;
> +
> +		#phy-cells = <0>;
> +	};
> +
> +	ptn3222_1: redriver@4f {
> +		compatible = "nxp,ptn3222";
> +		reg = <0x4f>;
> +
> +		reset-gpios = <&tlmm 184 GPIO_ACTIVE_LOW>;
> +
> +		vdd3v3-supply = <&vreg_l8b_e0_1p50>;
> +		vdd1v8-supply = <&vreg_l15b_e0_1p8>;
> +
> +		#phy-cells = <0>;
> +	};
> +
> +	ptn3222_2: redriver@47 {
> +		compatible = "nxp,ptn3222";
> +		reg = <0x47>;
> +
> +		reset-gpios = <&tlmm 9 GPIO_ACTIVE_LOW>;
> +
> +		vdd3v3-supply = <&vreg_l8b_e0_1p50>;
> +		vdd1v8-supply = <&vreg_l15b_e0_1p8>;
> +
> +		#phy-cells = <0>;
> +	};
> +};
> +
> +&smb2370_j_e2_eusb2_repeater {
> +	vdd18-supply = <&vreg_l15b_e0_1p8>;
> +	vdd3-supply = <&vreg_l7b_e0_2p79>;
> +};
> +
> +&smb2370_k_e2_eusb2_repeater {
> +	vdd18-supply = <&vreg_l15b_e0_1p8>;
> +	vdd3-supply = <&vreg_l7b_e0_2p79>;
> +};
> +
> +&smb2370_l_e2_eusb2_repeater {
> +	vdd18-supply = <&vreg_l15b_e0_1p8>;
> +	vdd3-supply = <&vreg_l7b_e0_2p79>;
> +};
> +
> +&usb1_ss0_hsphy {
> +	vdd-supply = <&vreg_l3f_e0_0p72>;
> +	vdda12-supply = <&vreg_l4h_e0_1p2>;
> +
> +	phys = <&smb2370_j_e2_eusb2_repeater>;
> +
> +	status = "okay";
> +};
> +
>  &tlmm {
>  	gpio-reserved-ranges = <4 4>, /* EC TZ Secure I3C */
>  			       <10 2>, /* OOB UART */
> @@ -858,3 +1015,129 @@ &pcie6_port0 {
>  	reset-gpios = <&tlmm 149 GPIO_ACTIVE_LOW>;
>  	wake-gpios = <&tlmm 151 GPIO_ACTIVE_LOW>;
>  };
> +
> +&usb1_ss0_qmpphy {
> +	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
> +	vdda-pll-supply = <&vreg_l3f_e0_0p72>;
> +	refgen-supply = <&vreg_l2f_e0_0p82>;
> +
> +	status = "okay";
> +};
> +
> +&usb1_ss0_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_ss_in>;
> +};
> +
> +&usb1_ss0_dwc3_hs {
> +	remote-endpoint = <&pmic_glink_hs_in>;
> +};
> +
> +&usb1_ss0 {
> +	status = "okay";
> +};
> +
> +&usb1_ss1_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_ss_in1>;
> +};
> +
> +&usb1_ss1_dwc3_hs {
> +	remote-endpoint = <&pmic_glink_hs_in1>;
> +};
> +
> +&usb1_ss1_hsphy {
> +	vdd-supply = <&vreg_l3f_e0_0p72>;
> +	vdda12-supply = <&vreg_l4h_e0_1p2>;
> +

Board clocks are missing from this and &usb1_ss0_hsphy node

> +	phys = <&smb2370_k_e2_eusb2_repeater>;
> +
> +	status = "okay";
> +};
> +
> +&usb1_ss1_qmpphy {
> +	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
> +	vdda-pll-supply = <&vreg_l1h_e0_0p89>;
> +	refgen-supply = <&vreg_l2f_e0_0p82>;
> +
> +	status = "okay";
> +};
> +
> +&usb1_ss1 {
> +	status = "okay";
> +};
> +
> +&usb1_ss2_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_ss_in2>;
> +};
> +
> +&usb1_ss2_dwc3_hs {
> +	remote-endpoint = <&pmic_glink_hs_in2>;
> +};
> +
> +&usb1_ss2_hsphy {
> +	vdd-supply = <&vreg_l4c_e1_0p72>;
> +	vdda12-supply = <&vreg_l4f_e1_1p08>;
> +
> +	phys = <&smb2370_l_e2_eusb2_repeater>;
> +
> +	status = "okay";
> +};
> +
> +&usb1_ss2_qmpphy {
> +	vdda-phy-supply = <&vreg_l4f_e1_1p08>;
> +	vdda-pll-supply = <&vreg_l4c_e1_0p72>;
> +	refgen-supply = <&vreg_l1c_e1_0p82>;
> +
> +	status = "okay";
> +};
> +
> +&usb1_ss2 {
> +	status = "okay";
> +};
> +
> +&usb_2 {
> +	status = "okay";
> +};
> +
> +&usb_2_hsphy {
> +	phys = <&ptn3222_2>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_hsphy0 {
> +	vdd-supply = <&vreg_l2h_e0_0p72>;
> +	vdda12-supply = <&vreg_l4h_e0_1p2>;
> +
> +	phys = <&ptn3222_0>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_hsphy1 {
> +	vdd-supply = <&vreg_l2h_e0_0p72>;
> +	vdda12-supply = <&vreg_l4h_e0_1p2>;
> +
> +	phys = <&ptn3222_1>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_qmpphy0 {
> +	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
> +	vdda-pll-supply = <&vreg_l2h_e0_0p72>;
> +	refgen-supply = <&vreg_l4f_e1_1p08>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_qmpphy1 {
> +	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
> +	vdda-pll-supply = <&vreg_l2h_e0_0p72>;
> +	refgen-supply = <&vreg_l4f_e1_1p08>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp {
> +	status = "okay";
> +};
> 


