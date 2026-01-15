Return-Path: <devicetree+bounces-255665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 586E2D2578D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:47:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 308E630198F5
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 15:41:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A3BB3B8BA3;
	Thu, 15 Jan 2026 15:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UfxJn74g";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iMb13m7v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CECA835503E
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768491668; cv=none; b=K2HgifH1rjU575A9EVtIxduFQDoETEL749kPkdzU87r2juN1noUv7eLxL8jDbH6h4dCFc3Ept35bGAoS1sNi41SzQmA74LtTyW6758DFpVrdI5SZZdKiYgwr0A0i5Nw5RGfIoKFEl0sv7Jvv5k9H+iALqAPUT3UzfOGpSMXOkWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768491668; c=relaxed/simple;
	bh=PVbD3JY/+2fLVRJDBALFlJGzI7Wuj6b5NRYNnDAixn4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TxrGo3BADTnWXJ+/aNj9ENIFER3lgkhy3bDBKANYm3LEjcXHr5okJGH0veb0S90RBB8mIogipSjnghO4GUltgBsWCiDLNArZUt4R30BGweRr9VH14hv7+GEFS/DBKQLxvEHZIFsfpTiNSJBSltZEGi9LivsVL/S+fFYts99VnBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UfxJn74g; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iMb13m7v; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FFYGiH2701739
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:40:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6Jn8t5yJvZEuQyGDiKMOAfso4NUXVWf25vNU7V3mPF0=; b=UfxJn74g+jH8bGD2
	3QJ6+kcaJsbSgH1oIRykFba4y9xAm0/3DzNZukuWkaaVprLqk5u5gSZrXVt8efQk
	M9YLD1UPB4/Wtc+JD5Vv0NVHGD6H8Hn7O/BURVmBjfln1QOaWrOqNT2YppUI4xgh
	AvDr6u8Hh9aYvFDCimO+fRh5hlEEXY4hCIuSPEtu+Femw0nnstvYludd5DCL6+sw
	nTLD9EZSo+BlV/iX6o+ObbE/6qXxR1nxskU/2FB23ytGrJIVchVj72cglPMsxvfc
	WXgSlQrz/H7UMbmg+/eJ6pI9vCnuc2Kf0bFj73LDWl6Wufp6BAWEANbmoqkQtDEY
	vQPh0g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpj1ptxmq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:40:57 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52dcf85b2so387358285a.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768491657; x=1769096457; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Jn8t5yJvZEuQyGDiKMOAfso4NUXVWf25vNU7V3mPF0=;
        b=iMb13m7vvAUyGNJtkKYFogQRLlDxJ/7Yx3LvV6kIdHo3BpHY25KwTK24C55ULxL53I
         nNAqV625/S1+WMszyUIyCe4GEaNoIqUVdms5Osgs3Lur+6qV1OZ5RJSZsSi7tjJeovtb
         TgNfiFZToTbLJiJoo/nrMZ42Eu8Oq4YRR0eKfq1zPhXGCv4f/NOghqjRZvWMUmmGCmL6
         lKYKpvXGCVvWTnX2r4BOOaMmZnjl5sG6foUqwWy42xAqry9IGTDBTz3TJHDXD3cpTHrt
         fu6lJbhybcIqbxsRdfbrAht9pfCqbJNk5pFDsvC5Cfdpcxsr17nje/K5rNv2F7UB5q5k
         HWQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768491657; x=1769096457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6Jn8t5yJvZEuQyGDiKMOAfso4NUXVWf25vNU7V3mPF0=;
        b=BhA8MXdPX3jQBExD33LeGsr77fOvS0svPv129zg38qcXWXmbxFKRpd2rh8yiKJPOZr
         HjnUbzdMVsGQ8nm9XUaRBkU2H4slV7rNMOsnyHy401rX2pweMQ7ARArNDIceM3/6MQtK
         A7d9G+JBJSwV98FLLUiaT85hoYdYHjdU0TT3h7vGOwqFH0Ifmlo2P2b/DWA5vd2kG7gE
         /JxruV8ccaeCr1+0TwyNYCZ5O03+rbvvvA9fQj7gKC1urgybb9VSqazXboGN4fcG/Kmn
         +aC6IEv9oD3rzX3fV+QpOOghtlfgRL5rLhGMUIb29bGX2RSdqNL2OOt8sf7VNXkTK7bi
         nD3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXIHEkNSu/DtLJgBCByl07GbADSVj4naJ0gBuFZoJPX00NH6A6/s7QjWLt6prEpJx06a/bbHXilgpAy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3102BJuEjduXwPwj9aa+wXZVc4o8KaUuLb5YblydHiLOuh0dV
	7VuBCSmKtbfDHjwePMnm8UN1ncSj4FsIJ+HTurP8r91UCPPnTjz+e/zLYDDrGqtesmrrYdqCmJu
	AviV/+Bihf1Rpfow3r4HHyMnu8odpwYs22EGvOwn9y71PmrGvEJVDhgG+vZrAOuT4
X-Gm-Gg: AY/fxX4AI3ipq9dvJJkCKhFLM6c7n5XS1hBi3DVHU5vLA9jwxiQkkI/2oVmQDoPXdGS
	W5sVYRAlIQQeVm0gzOj/inAnExrkDZ2Fxn18MV6l1snaowRSRs/a0YV1LfGWRexF6ntYDPSoyUj
	jopWrIQwlUy8YEl4jpJExLFLARV6aA8oTBU+Ow84/Q3BHAWkt3+nX8aFmg3BCl26tmHoIMsqiwW
	0ZLTBvpFJdNmjWvhZXXa/3rt27g8U41fWhG+x2MFZi0NkZzKvWrfmcSDAPiqnCc4KJUhU+uoWSJ
	TSQmPRgAdJufMpyLjmVugcVkm5zdTNcQILM2AgG2YkJW3NdCHL+2uzVSy43gIXFu0UE1J23RPQr
	h/1HPRmvCeqyDIgrYJ58MyIum1MLic+nbQn0FtA==
X-Received: by 2002:a05:620a:2698:b0:8b2:6251:64f9 with SMTP id af79cd13be357-8c52fbe240cmr896665185a.58.1768491656759;
        Thu, 15 Jan 2026 07:40:56 -0800 (PST)
X-Received: by 2002:a05:620a:2698:b0:8b2:6251:64f9 with SMTP id af79cd13be357-8c52fbe240cmr896660685a.58.1768491656219;
        Thu, 15 Jan 2026 07:40:56 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:953a:ee90:691e:977d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f4b26764fsm52959475e9.12.2026.01.15.07.40.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 07:40:55 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: LKML <linux-kernel@vger.kernel.org>, Stafford Horne <shorne@gmail.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Linux OpenRISC <linux-openrisc@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: Re: (subset) [PATCH v6 0/6] OpenRISC de0 nano single and multicore boards
Date: Thu, 15 Jan 2026 16:40:53 +0100
Message-ID: <176849165027.29734.708711779514578942.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260115151014.3956805-1-shorne@gmail.com>
References: <20260115151014.3956805-1-shorne@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDExNyBTYWx0ZWRfXztaO64WqGUIk
 AvN2ZUlTlKAe1wVARnqoID9P+U6VF66yZpZAHtUGqe6VF3Bmob9mwpSlH4Ujv6yjVaZroPD9erB
 gWKSnBJySCoVVy7DngkzJoZAlAPJhtuVUtq0eRvK/ruyqIgX3TFnlh3RUB5Z8TjiWoxUv//KT5I
 8SnHmF8p6eLSn4HtJvp+N2J/s95GdWYY37nffHKA//hdRr9+9NGqPucGEI4weyF1xQVe0FHVzZk
 02NnvcZnp43WpVP5nIZg88M+6HFfIa8+iLVOtPqinKnWrv6P3K1UcudSbJB7aw1lPp69lgbB4GB
 qdKydHVflvAaPArBRuTA4/jeA5vNEp2PuUHaV/mrMvH79PhVdzCVxRjKFLiXxFcXtqkg2jYDmMS
 DFqaX/hdl1FNFwRL2F0ebSMLDREFrEyDGijIlyz7otgTNSNKAkH7jS9qOPwKwNIyj/1eArYF4Ms
 AQaM1fH3xR76FBheWyw==
X-Authority-Analysis: v=2.4 cv=J+KnLQnS c=1 sm=1 tr=0 ts=69690a89 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=OH7h5zJ7Ze-Sh0Qh2Y4A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: -qEGy7DBIGY9ikBXL_ZDOJoyYhBz0Pax
X-Proofpoint-ORIG-GUID: -qEGy7DBIGY9ikBXL_ZDOJoyYhBz0Pax
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_04,2026-01-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150117


On Thu, 15 Jan 2026 15:09:56 +0000, Stafford Horne wrote:
> Since v5:
>  - Adjust dt-binding patch based on suggestions from Geert and Krzysztof.
>  - Add reviewed-by's on the dt-binding patch.
> Since v4:
>  - Rebased the series on linux-next to allow patches to be incremental.
>  - Rewrote the dt-bindings patch as an incremental patch, Due to this I
>    dropped reviewed-by's.
>  - Added acked-by to the IPI fix patch.
> Since v3:
>  - Switch order of gpio-mmio driver and bindings patches to patch binding
>    first before driver.  Suggested by Krzysztof.
>  - Removed example form binding suggested by Krzysztof.
>  - Added Reviewed-by's from Geert and Linus W.
> Since v2:
>  - Fixup (replace) gpio-mmio patch to update driver compatible list and just add
>    opencores,gpio to mmio-gpio bindings.  Discussed with Geert and Linus W
>    because the 8-bit opencores,gpio is not the same as the 32-bit broadcom
>    chip. [1].
>  - Update new device trees to use proper ordering, remove debug options, remove
>    unneeded "status" properties.  Suggested by Geert.
> Since v1:
>  - Use proper schema in gpio-mmio suggsted by Conor Dooley
>  - Remove 0 clock-frequency definitions in dtsi file
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: gpio-mmio: Correct opencores GPIO
      commit: b2b8d247ad8ee1abe860598cae70e2dbe8a09128
[2/6] gpio: mmio: Add compatible for opencores GPIO
      commit: 3a6a36a3fc4e18e202eaf6c258553b5a17b91677

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

