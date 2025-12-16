Return-Path: <devicetree+bounces-247056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D80ACC367C
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:03:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D40F230852E7
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:00:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30C2C3B7609;
	Tue, 16 Dec 2025 13:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H0sQo4tQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CO9OZs40"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91A093B75E2
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765893082; cv=none; b=n4uCcIsMaC0QMLZkGELfq66qr/tK6SYNTmaiKP0G/q9dTI/2zUiH9mbGCSu3WmwE0Ze/t2dVDfkLlDxZXN+1raz0CMTNVMycfyxHKLoMqReJVjpoHzh44Wk8EYDWMRx8AL+kiXGRzpGozoujjpBmVEzU+06x2YZuyPCty5P6Z8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765893082; c=relaxed/simple;
	bh=kqefaEAINqf9ddsXkYYvoPTUSPTPMuBy/+O6QH0DNwc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d1N/l0oMX6XAedUAMpZGxiaYqRnNUFof0pnW9C87tCrFsdi3Uv+9m6c8JAmZ2tUmwdPKfDNQceJI9EZqgB37fW/1cA+Z2B3ivfYbQGrlFnI0Px2V+EBjIVUaYU6JMR+ZUKdpdgfGsFMr5AmBK220MaHM6vMRUU/vYt1R9mvGDe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H0sQo4tQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CO9OZs40; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGC7BqQ3708459
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:51:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	INRsKK1zePcdI3MxN+3hX4QLQffn2295G25DNvsrZrk=; b=H0sQo4tQVbc15Jgy
	yzUdm3FiOBzttSL2D2BWVJ6qw4i7YROcnjirWnndq6pqHGRb2wcAL2Gei+B3Ie0S
	B3xm3J9goHoZQItQV9zI4EZvge14K0NKCO7u/YWgzCW3RXSnIQmed0G4xxsfdDoU
	wrKHXFfl5KZUFPPPNs0X9ahAx1kDH64W4GaThUk9KlkGlG/SjPYDL1UmcVsZ3pld
	MVCwEHzyyHRBDvQ+C8EhgWXmNZuiu19arpnx15B27OM6KEX9YTGkE0sBbZuFJKmH
	jxjxChkn4W5xuUg5/S+YW5o/gs44PpGW+NJ4M89oFdrOEDVNv+b71fQkq5vtZys9
	jM6thQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b375b0dm1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:51:19 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0891f819aso12907975ad.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 05:51:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765893079; x=1766497879; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=INRsKK1zePcdI3MxN+3hX4QLQffn2295G25DNvsrZrk=;
        b=CO9OZs40IhrDCiqIU6Ag94dSmI1yLMQ2oRY3xSb8Ct1r+bNgtvqfXKGaUs148f1AnV
         mEkCE3rxQsoFQZcIaE7IUmLfnOiXEcS/bIDM2Cg9A26D6dSsDaP4AdbOIphfAQjKtglk
         Xh0SMM9zzfD42UFdhAlN6o9FStO/JwqUcQ/eYOuNc4ohuvTT5JvLjUPQhlCMauoWgmfg
         s9k+wiQdi6PHBRhT2t6vqqwbIxzqVIRJ0rMYQASdMh6+ZNMKcOo6tbXnZmVTP2CtZij/
         nHPBrz57OCXvKHpJgP122xjiL14v+x4/w0w8Due3aBY4MPtvmWNwY9I9m1yTF0jrTskG
         cQKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765893079; x=1766497879;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=INRsKK1zePcdI3MxN+3hX4QLQffn2295G25DNvsrZrk=;
        b=XyQvRnIWgX+EHnxlqM78zUUlo9LSyf7QyaJiEi3ZCYdOLHAxWU41vjdRPoaxKo6SwT
         78NzGe+9Vo2LukNkg9cWk5A9PJYvekNDqdIHAuosMEo/j8X1772Z5HrBJ9tiPOlNCRo1
         gifaFlaRHa5o1vZ3YlrzJZqzM/A+jyvnKkaeN9MMakcK/u9AnOLwjRSSLoMiRGZoDST4
         p9L25U6OeSjWurMpOxlroa4xCTOm8+j7KBVu1oNzHlDaiV/unN8Ul81H6oVB5GAh4ZzO
         ya1AK/2ikTRzQEL4B4y4PDo9JcWG4KGXnlJV2q3l1XiTqsU7M5s+BhytqhUna1jLRrTQ
         beHA==
X-Forwarded-Encrypted: i=1; AJvYcCWYlv/T0XjSkYQO/TiRQZfuGCVC1WJqvGIjJeVeX5u0l0EK2olBfUNKiavAI6Rcg1iW9DcF2z5RxBp9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4/+S57KEZgoJmJJXqNNnPKbrRPNXxy9XhiDmcPGrtpKdg4G79
	3OGsIg+nDYljOkM+bOCm1qKlHMLNA4GhD3n2909LaTiscrH5VK2zO34abmSQBmraPmfKzJXhpVR
	2rYzmvb0Q7fR69OuogBwCzYfvckQ2ZBoELQvnx3EKmtb5mfQpqNyvA3EzbBIXS+QN
X-Gm-Gg: AY/fxX5DSKKUw1BPKOWpmZQhgk9wBhHnEFKn0Tylc5iZjgIVa5fE+tG+Nx1JE58tDQu
	/x/0hl/dND+DDhUr/SquAlPBPZ0MxSGAgv8792iipFa2OWtU5XO9E73yjp0NqGu1mKhGJ+n389Y
	6nfxbz8APesw/75NvTpWHIWFB9ZtIMtt0wdk2LpnWfBIgwa9sls06pTRHMzd0kFVkKdOiWPhS4z
	QjMthH1j3lhOzab4PTIVAnqzgKs2I7anzq5OhfPUEUt7WpYLWlArlscg6otRrQwwC2alMv6UJJ7
	fF2rPMjL0Sc0ra1CrCnWqFbm0W+k5643jQeioCeVd5vCmVYPIggjzDIdRCP+tDOB/K4aMxx5WEH
	U+lRhjl1MNdT6E4y+5HajEgIglp7jvyvd6mLSxITcgRMDt6uPh63y+yXFHojrWXbNGQ==
X-Received: by 2002:a17:903:2bcc:b0:29d:7e23:629 with SMTP id d9443c01a7336-29f23807a27mr108321845ad.0.1765893079188;
        Tue, 16 Dec 2025 05:51:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHBOq5l2eisqWzuziHOLKqJEQPy0Brj00XHCZuNMqzhum37I6UYsbBPPvOquk5iaGRcXQavjw==
X-Received: by 2002:a17:903:2bcc:b0:29d:7e23:629 with SMTP id d9443c01a7336-29f23807a27mr108321695ad.0.1765893078766;
        Tue, 16 Dec 2025 05:51:18 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa2ea57csm1688588866b.22.2025.12.16.05.51.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 05:51:18 -0800 (PST)
Message-ID: <932a87de-ab2d-4a60-a188-04cc2c00898c@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 14:51:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sm7225-fairphone-fp4: Add camera
 fixed regulators
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20251210-fp4-cam-prep-v1-0-0eacbff271ec@fairphone.com>
 <20251210-fp4-cam-prep-v1-3-0eacbff271ec@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251210-fp4-cam-prep-v1-3-0eacbff271ec@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDExOSBTYWx0ZWRfX2nESvhB8oQFJ
 PSCD5wGXEuaPDv8nVY1JWlmylm9/a+iSQQmdjeJT0KXmtsnx+HGWzQhLG4XwS+AqVAPoVb3BhHo
 +VS2n7GbRE/B2VPkLCmeEv0t+9ZGOrD/Ly07/23S026JxZUAie1KNsZ7noDQcQwq3rIDJGy4Njt
 PzdTHnl4QOWO9ptCuyGkBsMm/G4Ct5+spec5VeN1YfQXkKr1SyfCJaDHUaY8Ay0OXvFEeYEhkKO
 TNoPXnaEw2OZXfiHhNNn+ThZpf+0u2cWXP0hq2qK4R790DbAYivjXnjnKuiJlZGQFN3fKRcUj7T
 67ZNqAaa0o8q+zhHhoVueeAeFET1mjzINkrkmLEXX3PbfyFtNCqRntpsiFXPT7QoSXgD6iq/Od8
 VoEKbvzZYvQcQfAy8hhH5RpbwF9beA==
X-Proofpoint-GUID: d-hmAN5NL5o4YpTO85RyXgQpnu8G9clB
X-Proofpoint-ORIG-GUID: d-hmAN5NL5o4YpTO85RyXgQpnu8G9clB
X-Authority-Analysis: v=2.4 cv=T9qBjvKQ c=1 sm=1 tr=0 ts=694163d7 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=7PjLcmBxODYuNRU7m5cA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160119

On 12/10/25 2:05 AM, Luca Weiss wrote:
> Add multiple fixed regulators that are found on the phone, which provide
> power to the cameras.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 40 +++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
> index c2f856a56b2b..0cfb24e3941d 100644
> --- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
> +++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
> @@ -246,6 +246,46 @@ active-config0 {
>  			};
>  		};
>  	};
> +
> +	vreg_32m_cam_dvdd_1p05: regulator-32m-cam-dvdd-1p05 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "32M_CAM_DVDD_1P05";
> +		regulator-min-microvolt = <1050000>;
> +		regulator-max-microvolt = <1050000>;
> +		gpio = <&pm6150l_gpios 2 GPIO_ACTIVE_HIGH>;

It'd be useful to also explicitly describe the pinmux/cfg states
of the PMIC pins, since these can be a little surprising at boot

Konrad

