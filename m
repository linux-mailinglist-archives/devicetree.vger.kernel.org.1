Return-Path: <devicetree+bounces-251801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D000CF7382
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 09:06:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2794B307B3F6
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 08:03:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B81130B529;
	Tue,  6 Jan 2026 08:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bRzEvoPs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LPvsWRTM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5208130AAB3
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 08:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767686593; cv=none; b=Y+mfdd/mIorcWH9W2Lzb1Hk0HlyBw4T0lbGxd/3lzWobWGd6gTh5aU/U3h3Hwzx2/FviwkEQWVuskdrgUsItJx5EEGjDH6GX2Kl3suKDjqqqnfEdCqrklQzGZa5YpAp2cPRF1pNqcz8+ORhL6bJNTtuzI0XKBFdF/giCIk/eFVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767686593; c=relaxed/simple;
	bh=f5+U4bIkXAF6HhuAJ3mpf6QbgXiY+y9Yar7nApZbdT0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EnEfp+Pzl219LZkedNLVPKJboOp0qmT0KbNMXdBB+p2sZDwjE1nawY4GrXjKLhT2tCu/aXdco0hfO9rAVhMqdqU9JksyKdiP62zw4U0W6oeXfsje/E0H851mNtJkoVJqUCCljkXaSxXDArCY0K/Hp3v5+FIQG9LRTLwvtX8WK3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bRzEvoPs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LPvsWRTM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063RDSk530099
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 08:03:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S3+xtUM3olagLh1tBmNWj8fPCCymvhiEGhTOzn8UdE4=; b=bRzEvoPsKdMbynUm
	lUycbMAVpL4+HrfVeB4OPF/nUQJdsubQB2O0bM3FK93ai7JEUBgeGTeE3KEgJYrP
	rnap/qAjw9X21KuTmiczvmoxBOkY12+HKNOZK0z2SSLLD/Ic7AF1TJweSEBhl4bm
	x5dstuyVD54m8zzPQuRAoNP2P767CxXnYFp1+1IKVicNpa9QWQezere/Vrr06bQp
	HoOQFMmyoJ6vogdg+XjIQxhbp/5Urgj5+hbOTOFJSVil1iFTjosBuaZn8kXQHoaE
	6WLF6ThOIxuLlI6fPEDXMM9CQKDShwm0QxuSAHg2mZedZzlHf+Xdi8+4FIR1IX4g
	+iKk8A==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bggqu2aqt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 08:03:10 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7bad1cef9bcso1609186b3a.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 00:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767686589; x=1768291389; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S3+xtUM3olagLh1tBmNWj8fPCCymvhiEGhTOzn8UdE4=;
        b=LPvsWRTMHy8VrbH6rK3HRtOVgNpolYMglpzjgw9EZxothF09y3A7nxgG22r1wcmckr
         G0WPykIuo2BvxCI338yLw4miSIDyHrkmMLguEWVLBHCbzCuJmt/68L5z7ExQCRHx15Gw
         c/TSisSKECfvCfhWk0RbO9MjaMU3chAtyUK71roqfu/ejR1D7fpUmeZ2IyD8wNTFWlO1
         tM6m2DCU9GgS85j1hzMsGX58Lmq5XlH7AnH2dsdMtrpLdLj4ZzMPUFXk/7qUMwpKZQ5y
         3RAxtFKbpSvKnQS71wJGUyf1krdZLeANaLTrCZcF/rEFwncBIsz3INSkA7U1fa1AKsXL
         7sLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767686589; x=1768291389;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S3+xtUM3olagLh1tBmNWj8fPCCymvhiEGhTOzn8UdE4=;
        b=t3edtOabA27RbHUtK0CLQQrNMl0fAAgxV07kb75MYTZp2buh9Q1VmkwyJznvAVNhiC
         igb9eEADvHqgkHrPMJArvm9erOqGcfUqPvln5En2VzXfoaZtJ4XrrUnwV1B0GvdYSM5y
         yAl5siHZJTLjdveIzLhVgfQfApmbCTrC4IQka9+9MspgpCI92wrgriYLOWN6/dHr+qE9
         pamxz7NrNAvhHO7DHSTKKTxT4baBVRXHPRjWA/LteJLRYtTNrT2lPh/4q7RbxHjNnVUu
         U2/HFVfWXd8/qIjJdB0E4dOYIK+e7u3yaJFQyPi+nxzFpoYhPVpwN66LfvoVsretEq9K
         pNVg==
X-Forwarded-Encrypted: i=1; AJvYcCU2GeeDauteNbQTZJr/YiW7r0vbM3yNcScM/GtW979Dp9+9Ud2xYd8k41LhA8Ez0JrFby52VOcesoQs@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7d8YG2NsDwy2AmCBlccL4ZzEl+aSNYAMVRDgN06H6Hx9qUAMF
	I2O7SR+DWjmVkbqwIOHoPLr1V7n1A8CZ+5KcM6Rd+FnrUKAWlaIga2rvBUy6gisx7O7p7Ab9MkV
	4wwmfctatrGuuz4yURt/IdGJdxp3KJwwVqfGNkloSl/9qmhqkJZvqbqsGuvm0xuCeixal3KHT
X-Gm-Gg: AY/fxX7c78q0wlAWcB7aDw9ZPAR4B5TyCiGA1WLOlSIUaRn/I/PiUbcH3W75OZitI3S
	kXo1MoGGkM5rAW2v/UwmQs1Y5Q1Rdbk9meDaluQYsoBy26Tmwta8Kszs54TcGZUtGdAiJw3qH8a
	yeThARP9AnY5PN+LvQJqJYRfBvsJ1r7Nbm1RlMcMpJHYnlIrcPancY1vRN+NFy61Xe9TrRpoLE7
	y+RDTcBCwdQjZtKLla2USR9A2kaAmxiGJeanrV2bOGL3gpEw1yFxosssk6YfA7aEAowoPoo/HLC
	SAteNqFnlmIj8wSjmcTuNJMaN7G4EhFNraaoc88aub/w3Sp+OifvWcJZMi3Q9pH2mlH77epvv/G
	I87etEHLm7ghsQgAd/O9j+u2J
X-Received: by 2002:a05:6a00:4c0c:b0:7f7:1857:8456 with SMTP id d2e1a72fcca58-81882bed424mr2160907b3a.55.1767686589497;
        Tue, 06 Jan 2026 00:03:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG1StIk5ri+Xdk2XHSuW8HPE18xZLf09BUwEnyMKp00EvRdNGc+dY7FLMF1eltAoyBuNLC6+w==
X-Received: by 2002:a05:6a00:4c0c:b0:7f7:1857:8456 with SMTP id d2e1a72fcca58-81882bed424mr2160864b3a.55.1767686588964;
        Tue, 06 Jan 2026 00:03:08 -0800 (PST)
Received: from work ([120.60.56.175])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c530133csm1318334b3a.31.2026.01.06.00.03.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 00:03:08 -0800 (PST)
Date: Tue, 6 Jan 2026 13:33:02 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V3 2/4] dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC
 compatible for x1e80100
Message-ID: <ljaqrxazapkqvv5m5kxm2pq32dmgyupu3fzn7yhgvnvg72o3lm@5qiiuv3oizvh>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260105144643.669344-3-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260105144643.669344-3-pradeep.pragallapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA2NyBTYWx0ZWRfXx4fdKtGPyPg/
 bOWh2kzYekzhE9cDl35VRd75RVNjJupwKtjAwIdc4K6LQu4LtICLCtOZ1VZjSpR/Nek5DIwelFb
 hKKO0wZu30KFLzJzleKJYwuXejUg5R9FSeIw/6qwq4ii7mNzrn8f71kPbIV7MhNMvDmAqzqdnlM
 KVTcdTs2wjzEhpx1tjDbtMocpRwKty0UCdoltLZYPwhW+y+i8cJXzMzmYS7u2xYYD134clyteYS
 SvSjY3bbgN0ByCkuuJt1EhJvJtN8Oq7vivkw383zcggq39sK1TUG4lBPYOw6b2LtUmHm1bD/2Il
 fQYiejHBBXRnVRn1N3k24BvLXuOzYuHrqqf5csVg7qcafW/ij1pJdpF4KsKV1hiz9KxoOf8ku2S
 LTvlJMiBOwIPhNEhMlCvmLobve2o/8Ix/SUr5ty6rYh0Z/8ru9VcAhloDMN1yO1hPjKV1X22vCY
 4vzElpZtXM13tGyJf5g==
X-Proofpoint-ORIG-GUID: js2k8H2hw2IWac4v6PA9YqWNilodPAqn
X-Authority-Analysis: v=2.4 cv=fr/RpV4f c=1 sm=1 tr=0 ts=695cc1be cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=JR4DBjdY6jk8CmbmB73bTw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=I8-C11gq8jfHFaFuRmUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: js2k8H2hw2IWac4v6PA9YqWNilodPAqn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 adultscore=0 spamscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060067

On Mon, Jan 05, 2026 at 08:16:41PM +0530, Pradeep P V K wrote:
> Add UFS Host Controller (UFSHC) compatible for x1e80100 SoC. Use
> SM8550 as a fallback since x1e80100 is fully compatible with it.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>

Acked-by: Manivannan Sadhasivam <mani@kernel.org>

- Mani

> ---
>  .../bindings/ufs/qcom,sc7180-ufshc.yaml       | 37 +++++++++++--------
>  1 file changed, 22 insertions(+), 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
> index d94ef4e6b85a..c1085d178421 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
> @@ -31,21 +31,28 @@ select:
>  
>  properties:
>    compatible:
> -    items:
> -      - enum:
> -          - qcom,msm8998-ufshc
> -          - qcom,qcs8300-ufshc
> -          - qcom,sa8775p-ufshc
> -          - qcom,sc7180-ufshc
> -          - qcom,sc7280-ufshc
> -          - qcom,sc8180x-ufshc
> -          - qcom,sc8280xp-ufshc
> -          - qcom,sm8250-ufshc
> -          - qcom,sm8350-ufshc
> -          - qcom,sm8450-ufshc
> -          - qcom,sm8550-ufshc
> -      - const: qcom,ufshc
> -      - const: jedec,ufs-2.0
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,x1e80100-ufshc
> +          - const: qcom,sm8550-ufshc
> +          - const: qcom,ufshc
> +          - const: jedec,ufs-2.0
> +      - items:
> +          - enum:
> +              - qcom,msm8998-ufshc
> +              - qcom,qcs8300-ufshc
> +              - qcom,sa8775p-ufshc
> +              - qcom,sc7180-ufshc
> +              - qcom,sc7280-ufshc
> +              - qcom,sc8180x-ufshc
> +              - qcom,sc8280xp-ufshc
> +              - qcom,sm8250-ufshc
> +              - qcom,sm8350-ufshc
> +              - qcom,sm8450-ufshc
> +              - qcom,sm8550-ufshc
> +          - const: qcom,ufshc
> +          - const: jedec,ufs-2.0
>  
>    reg:
>      maxItems: 1
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

