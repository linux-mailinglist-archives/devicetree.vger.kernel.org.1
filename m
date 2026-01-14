Return-Path: <devicetree+bounces-255227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5176D2171B
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:51:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 350583033679
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 21:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E53F03A7DFF;
	Wed, 14 Jan 2026 21:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FOpmXL/6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Xga3NiGD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E6F3A7DE5
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768427429; cv=none; b=AlsAavIDwZ1PocQga8X4vsjHjPbrhTjSNRQdLDFb+mRemnVTCzXDQcmnnMLMND2Qi/eu5nA0I5mWHMK2apEhsAjKEvSpMr4FuAIq3mNphDIXUB6y3xvPZQr3OIyN7cXpdHw3X3sJMv3cComUbJFPqvNOXg+S6I8+6+hsD8Xy5t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768427429; c=relaxed/simple;
	bh=pM6rH1wDt+deEBUHqE+D5yOSxEdfw/j+X7ePmUlHSz4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nhfef0RAiyWwRf2dS4fWqaGmVZcLJuupnSa+fkkVy+LRBNi+NaOUkZO18yppsRI8CJo1qHgrcdl3q8wLdTljFQvrpIiZg0Bzxovn1pli0jIz2PDBwgUUu5sKVMpDov+rVlCypWHW9Lkzd57kmO4lyJ/E2HZy0l8D62/ZSzjfp7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FOpmXL/6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Xga3NiGD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EH56ms2902834
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:50:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hKeUV2Uhbrfkcr6j7DSR+Sck
	JGwnu8Y7+L8EWtr68+s=; b=FOpmXL/61/kLOPbdbN1pFDf+8qWhvTyi5PGGtKYW
	ijqHDxJbPB/mxNCR8NBIxMiPBArGQjzsvrkz8EK0GfrKZMJ4inkKnAXWuksmDvVY
	9leBlqbPE4cyCr4o79eIdu8mAM7LzzE8ec0ZZgqaHoWBIZWyuhwX+5/bE0PIdtoP
	RuFVSweVZ5oTE27JM3vsVSkq0jaBfEeDTZ/yXqj3Q7zb4aDIpAXm3dLjq2v+4oFZ
	wymTNwD9bHvF8pPNf5emsUhBg+HbchqutQBp88M+Ji7/obtLf9pbXebPlwibiK5F
	9sPPqQeUBiHzpXtmfZi8BqHwPiYNbKOirBd3YLqApBpKRw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp931j9k2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:50:04 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c2bcf21a58so88471585a.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768427403; x=1769032203; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hKeUV2Uhbrfkcr6j7DSR+SckJGwnu8Y7+L8EWtr68+s=;
        b=Xga3NiGDQpMwjEYy+u1fFdI3IOiaEKLefffstzbD4tG+JmB5DxYDGwuJUqXv0IHq/2
         duBXfVOFMM9xgHGiEdPyqghPSsK9HE1DUixaOsp3+LImjNLidReEQHy6V7z7fJBh5rgx
         JUNLczMl8FISoDZnmeeAlhnCI2ETT41NLYhHiYmONUhxoWNq6+lVcCgTm5pb8LUoJbo9
         JUoVreIe6NUWmLS5jyizLgtL7lePbJPBS377YZq1wemFk5/DK/VwUDOHhZrBOjVYqu4n
         qCDn0cdIUadGn3QBJl0JQICycddsLi3spTHTWtAIPbTMPKZ2yYInpYdWN/+qsUzVcBkY
         Kcyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768427403; x=1769032203;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hKeUV2Uhbrfkcr6j7DSR+SckJGwnu8Y7+L8EWtr68+s=;
        b=i/YF+YsEqiv7ZAhT9ra7k368c1u+cZRpaLg577DxZqkchXE4iq3A11k8nYY209blqE
         27+RLMU5yYiHUfLN5wR9I1Z4FOll7LD5KBI1tWv4Sosq4ieTH5bXgkyupnlRyHWmN8i5
         DsFfpDU7iqUJggSpXBoHTx/X6jgzZxGbdDU30MQH4D14Wlg08cbWy76YlHQRhH+77VfU
         5RslIk1421Vc1zYw9pOsH0YuD29gjl5hNxjVxkW/4GhKyKpMngKJMbtoJ9j9a4TgHiPM
         ZeT4Uo4IE4F6yrV29u8PoDm0+TTFoGdgHpBSIjTkH8W6JGMA/IvGkTDe6kpmwkFlopDl
         xRPg==
X-Forwarded-Encrypted: i=1; AJvYcCXA9gsVjsDWIh7mcltq21ijVro0JxDOEXp/WPFmx4kSKZJ/z2XYHWU6Uz9OOjbZNKth8smaBVhH8DOH@vger.kernel.org
X-Gm-Message-State: AOJu0YxEx8m92kIpynC49BZs/LUIMoCBFTktJN8ooULANfDjyPG/xFJv
	bNKw3X4hCGh9H9yRIgdxjKX1RGSC1x0/I4xMKD1zCtLO2e5FLfzunbzJ/WfO7FHvA4cljqFbRPL
	AbZzmbCcvqF1qotiP9VXUjFlDlKKQrjk1O9pcWQ1BTy+Ri2svDo7QU0QLJ2rsBoky
X-Gm-Gg: AY/fxX44M2cEgAuQqS2qOGAgg1iDilaWn8rWeufBEWx9VclqexT+3NE7kuwZbgPYNpq
	/DBkAOuT4t+6SOXD9beYEqxcM0Haom0oM4brDBYoKHSvAr/KpDpKo/q225/P/EpKCcGmfW098S5
	FGzg+ttrwscIHS2APKPyvsmhH/jEas8OA/A9zpdxrVotG+Iz/kopfH29415V8h3Z8Cn+KTZ2ZD4
	xdpE+PCW1627jMqU7WGBMvQ/Jdhw71RBp0c6XgLcbFr/JM1kUOwTlwP8j+EEqSG5rmqNcKHate+
	PU7AMoHn4QdLtonHz9ExTcg0zmDHiHWjMzhT1T2OeV/S6X7owKFTn1dFzdFa7mieUSx6RXEjxjy
	1dbeRIUIRjcVLn3yB1gqzQAwtcNXIMnh/Cr0hq7qtUo+3OlE5QBX4WCz1dKKCrngfMCW8iXZ+Al
	2Vt9C6bCaFByHnj3fpSVImuI0=
X-Received: by 2002:a05:620a:19a3:b0:8b2:dada:29b4 with SMTP id af79cd13be357-8c5318079eamr480715685a.63.1768427403437;
        Wed, 14 Jan 2026 13:50:03 -0800 (PST)
X-Received: by 2002:a05:620a:19a3:b0:8b2:dada:29b4 with SMTP id af79cd13be357-8c5318079eamr480711885a.63.1768427402885;
        Wed, 14 Jan 2026 13:50:02 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382ffe2b913sm44608921fa.33.2026.01.14.13.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 13:50:02 -0800 (PST)
Date: Wed, 14 Jan 2026 23:50:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        abel.vesa@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: Re: [PATCH v4 1/4] dt-bindings: soc: qcom: qcom,pmic-glink: Update
 X1E80100 compatible string
Message-ID: <z6hbqbsbafddo33hv6b37o3rklv7krcxvqi4rmk4f6bnghlwrk@gkeccm5jkqpy>
References: <20260114211759.2740309-1-anjelique.melendez@oss.qualcomm.com>
 <20260114211759.2740309-2-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114211759.2740309-2-anjelique.melendez@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=BOW+bVQG c=1 sm=1 tr=0 ts=69680f8c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=5xImJ3k2O6QUSjG9o0gA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: LHix1IQkBoe9HYbnYQhCxXovT4vmRJAr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDE3OSBTYWx0ZWRfX5tDQMVq/UHfo
 IoMRo9jfNJHRgIA0IUQ4rBpITWV4opvFeDHsKTrOb6HaGtOKYy8JDULzz0NRw7O2OhwWUCt98E5
 r7nSq62OeikmwPfDDJnaT0LYp5hk3sn8ISMuCmj+fndOoHDdwcxdPD84CRxR6j/0vmhU9CnvUn9
 VB+fdSq2CNhEX6HDF1aLLlvdDfPwTV3qcFR6mC7ADIUip96nmKZoGas3SsIWfOpzPYWm5R1g2PH
 UWow15TWXWwJioCRpHMpGXKhUdoVaILYkcFZBR9bEb/rIxS4CSr/iKI4uhDcYIJKwWFV2cwZjNJ
 gdhWiCTdcxZaNyqTxBG93LD5ZfeLzbXS5/0CJlZVNG/PxONRbIX0vLiCjOzj3Zae8bx48zGZ7LC
 Z64D3pZ5IJVN2SfuAAh30WgPpcGeQRG8RaTPpcFdVWIWQgTLbyGC5A3Rj7gCG1+HmXeRAnXzkCz
 ZMnmyauuokO5BUB+3Fg==
X-Proofpoint-GUID: LHix1IQkBoe9HYbnYQhCxXovT4vmRJAr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_06,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140179

On Wed, Jan 14, 2026 at 01:17:56PM -0800, Anjelique Melendez wrote:
> Currently, the X1E80100 compatible string is defined to fallback onto
> SM8550 which is incorrect as X1E80100 and SM8550 are not compatible
> devices.

Nit: it would be nice to mention, what is not compatible (BMS).

> Update "qcom,x1e80100-pmic-glink" to be a standalone compatible
> string.
> 
> For now leave the original X1E80100 definition with fallback to SM8550
> as is inorder to not break current definitions. This will be removed after
> a grace period.
> 
> Fixes: 0ebeba917f03 ("dt-bindings: soc: qcom: qcom,pmic-glink: document X1E80100 compatible")
> Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> index 7085bf88afab..012c5661115d 100644
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> @@ -29,6 +29,7 @@ properties:
>                - qcom,sm8350-pmic-glink
>                - qcom,sm8450-pmic-glink
>                - qcom,sm8550-pmic-glink
> +              - qcom,x1e80100-pmic-glink
>            - const: qcom,pmic-glink
>        - items:
>            - enum:
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

