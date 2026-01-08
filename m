Return-Path: <devicetree+bounces-252571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B7ED012AA
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 06:47:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AB44F3008199
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 05:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B950833A6F8;
	Thu,  8 Jan 2026 05:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kiYiitX3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MrzPG3zz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D5D328B67
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 05:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767851269; cv=none; b=iPw1ykPuYgbqtjRQD4neK7LvibUr0IMD2rSeoogBjn/M2NhxYE3cFXwZzeB2R385WI9iv2AHxVLTZNgwjis3sHFLvgwW/POduX7dXzgJVrhVmwZdK/5Duc3Hstuv5QraIQQKhZ9cy1dSmZxDR7E70grHxC7K8R6VQECOeRno1RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767851269; c=relaxed/simple;
	bh=66UoQQjvLHf4mnfG1QkMQ2nxqCNmF7Q71Sb3Zmix9XA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LKsIeeqkbHwWe4ZC5wS9hfwyuJoKKdsKtfMfFfr5PCzWlKsdd4sd4R5PUqQy53YAJn84ZKVLKVvDAPd7WMranSh+lqeRANZCloRaMKtTJYj8VC8pBPFmLWmQuN2VWKtmsX2SLc905nsvDGZlp905QBeYa08ts44a+VDgVKvvYfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kiYiitX3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MrzPG3zz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60846G3a2780366
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 05:47:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tr/VYrjq3LCAfgjIsWUzlI2IhSAf6Tz90GECDBfSwY8=; b=kiYiitX347PRbexW
	LP3LObGWGubSxRYnrrtK3PDh+4Xp9oZ6JiivnRaFlWiZT6YQmrDMtlGeWaAATF0U
	5/Cs+ZClMMqz2dSEdYT5vxsFJKQWNzVE6S4kOscxJJfaDp3Tzz5gJZEfR2LOJ1rN
	dDT0JJUa6CfV/LMnLQUpdERwTe5g7/hWwDG0vcWA3Y/5NrbTfRFB960beVqwFaPP
	QR8rjsqXTkfLnUYEAFbzVD6HDTLPsJukiVy8QaBi3WOGKolQOUTp/5JgdltrpE0r
	0BCmVLmv5r5ogU6+L4UehwqWvjRooa+bCg8PGdX0NvlK3xzceh64bkURpJZxVLqh
	9TQ7Vg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj58ug8a5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:47:47 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a089575ab3so35534585ad.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 21:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767851267; x=1768456067; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tr/VYrjq3LCAfgjIsWUzlI2IhSAf6Tz90GECDBfSwY8=;
        b=MrzPG3zzQKqUQFaSW/XJS/fAPr2Z74z+VPMnlGsrWSdMWqimjCDe5td8cAOvWkCYCP
         gLEZxr8N7R/u5KMTnqf+rxyL/8DGa1W7TluaHiPLmyJY1sH1BvGob6jxmtqKFDIW6BNS
         YToyAILRCEew5C7k8A7p4T0dqUC7AcyTQKiTZLbsaUQw9JDIqUXtTWiggVHGHQ3g5Zde
         zU7smXvpdu4iEEzxJTTnDOZHG7GGd3czUaAKCcqip2G/oDcbDlOkpbx2XK94ez6MStL9
         cj3rwXqfp9LwuVDeolNDSebRz43uTUoQAwgBXSy6GKHNc235dvoQhRa5V4Ft/pmbhQDh
         s8Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767851267; x=1768456067;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tr/VYrjq3LCAfgjIsWUzlI2IhSAf6Tz90GECDBfSwY8=;
        b=rlWYzDNSBE6FUrhU1r4N6pyvkS6bfSpNhNAbNeNmszlE50Bc2C/X6qsgH+2lFRcqYI
         hBrlMZvf3E8f9CNLk/cSoE6oqOPK69rHZ0ZGr3Wj3Ulr0FJbDWOneoDLWs2715n7nxBq
         Gb9j5jb+JrA5NgevWB7Gr5YkZE9A7xKI+QWzRCWrAeV4ExBsYL0AZ+z4PEDjDizvJ9CJ
         llmXHjtnPH5m8dhUdk69tKlTESRMMCP/0zXT1oIZar4F6J0KzeHVzX+rAOuo/ZBfuFzn
         UlaMELN9T3nViR25aiSBSiheYx3h0nonMgNB6fm7ePI3f36ypNF/5g6iiAdazOrKuZut
         4bAA==
X-Forwarded-Encrypted: i=1; AJvYcCW3yQDhTZZh0+883AX69UY1pFVja6w92+cW4qtH+AgrzlnWnpsLnmiDS1woqch8EXVAojpn1CYQtZvQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yywx1OtXdP350Vooap9zodZQ0M8b+/eyPCXOxfYfcHx6lrCL+oO
	fQL8PimidZpXaaXCE33z5yS6NllsblB4fEbXEP2sZOuxYp3gzsxva/BIk7WvUlUMpYoiLjvTMuS
	u48FTsGP7u+WCOtdX8O6YRqGUJELaI8kVDX0rnvwdSiztql+YqpeB53ImJY7KVMOs
X-Gm-Gg: AY/fxX7D7vdVb7zrNYLof1kxoBBDTWTCFWelORRJ2eOccdlTu8Y2seWekERB7E0gNys
	cQgEFxkQMFHi8cNLY22YtoH6V8WhDffT8LvIy4ON4UJ7xhw15PDpEP40glaO4AVpq9CNp0deqoT
	TBXNmw6tBTzT0LYx0oD0doZ7bFbYMdr20x8Y6XwDTJ5Xe5ex6L9WYh/MYUhLL+cG/UmMPAh1GIz
	0xAJ6xwfoa9MUr8FCRf33k0QvpsgSo6hkSCOXUYdD3QH7QRHiL73aO4zikuN0beICquOsO9ZvBO
	D7hj387WtRTmZczrEbKrFiYqriGmS7N6//c4NHW2HEyOXuz7tMN/FaCZUVqdSupjO2uW5YsIO3h
	JGdDZPZHjfCyZe3AP7wCFaGRJn96vszI7ffv5XNGlVfPLOuAPUrfNK6CWk05MvMIFTkEa5re/nn
	up0hPX
X-Received: by 2002:a17:902:f54e:b0:2a0:afeb:fbbb with SMTP id d9443c01a7336-2a3ee4370acmr47863675ad.1.1767851265603;
        Wed, 07 Jan 2026 21:47:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFqtJp/dLS1vcdNRX9OcFgrl/+8DU40tksPBNVm7s8C/HiKzOWVUbRhLftVpzKQbfX0fM7V9g==
X-Received: by 2002:a17:902:f54e:b0:2a0:afeb:fbbb with SMTP id d9443c01a7336-2a3ee4370acmr47863275ad.1.1767851265083;
        Wed, 07 Jan 2026 21:47:45 -0800 (PST)
Received: from [10.133.33.187] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c3a303sm65912425ad.5.2026.01.07.21.47.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 21:47:44 -0800 (PST)
Message-ID: <d3757e4f-ac9f-40e8-94f1-a8ed68a6d2c1@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 13:47:38 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
References: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
 <20260108052459.1819970-3-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <20260108052459.1819970-3-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDAzNCBTYWx0ZWRfX2eI0ziC7hJqi
 sXrCwuCHNyEuMJj8U8Bs2KyrBNgF5YyX/PbD8lqFeh2Vsr/ikoVhEDUfiI0KZQqxMjsTtqwVUpy
 9BxB9zOhsNjUTEHCv5d+7j8tQZCSsAE5BFw7kA3h9qjylkyldSkbRzjDy5hNdoG5cJ7Ztdx2xjl
 239BClthWk8vkANGQYvhi/kI4OnPqUbuuPhbf7mz/qJ+lAtxQ/4TFWCfrDypwU9xy1xlAEDKxLT
 lbl9UYqnlEZ3bR3P6q063gXEKYE+lClPXmqU/oMSIY06264m64uA+V5HLMXud0wLTaRBkOBQg0F
 VJTwQmeuG2qOWJ62fPAJ7E0rRzj/6WVShieqqYls5VWWDtpolUWdTFRn3f6Hhw4a7qBMj9yrHOR
 2V6a03lt77xFwtoxvacRA9nW1ZjeJ9FeFyyGLOHvIkWG3rcms1LldM/aCP0mfyfbjv/IVBkYUYx
 ql7wuLzvsW9j3pLenNw==
X-Proofpoint-GUID: DXtP-fkGtHgcyGoAjZjpsybfoUah4NMb
X-Proofpoint-ORIG-GUID: DXtP-fkGtHgcyGoAjZjpsybfoUah4NMb
X-Authority-Analysis: v=2.4 cv=CMgnnBrD c=1 sm=1 tr=0 ts=695f4503 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ggdtOhnRc_DFG83H6sgA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_05,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 adultscore=0 suspectscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080034



On 1/8/2026 1:24 PM, Krishna Kurapati wrote:
> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> 
> Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
> fallback to indicate the compatibility of the M31 eUSB2 PHY on the
> Kaanapali with that on the SM8750.
> 
> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> index 409803874c97..cd6b84213a7c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> @@ -19,6 +19,7 @@ properties:
>        - items:
>            - enum:
>                - qcom,glymur-m31-eusb2-phy
> +              - qcom,kaanapali-m31-eusb2-phy
>            - const: qcom,sm8750-m31-eusb2-phy
>        - const: qcom,sm8750-m31-eusb2-phy
>  

I think the reviewed-by tag should be reserved as this is patch rebase.

Thanks,
Jingyi

