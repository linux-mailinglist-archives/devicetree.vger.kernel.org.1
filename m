Return-Path: <devicetree+bounces-247410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E54A0CC79AD
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:28:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 08F9E309798E
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B919D337694;
	Wed, 17 Dec 2025 12:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LNy5rvrM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BqgtRjHg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7D6286400
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765974375; cv=none; b=Lb2qWB7qZrjpwWdjiInA4bYH6NWzWKqXtv6Uz8sVnliyjluFr/qmcTYhplQjIl9YBsWL3JWIfPx8F165TuBko0MvmGtDAbzeOHweRkSnusAFToxRZGP+87xsgN/Lm/mYvAm2IMUNTOcnTneOGrOmihWKAConf/5jEiwiI8leAAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765974375; c=relaxed/simple;
	bh=C1feAJ7owFyiR49qyLvfAicbrprYnsAg83SKSJyFT+g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tCnWPO9fVqsGYy1+yI6wWfCBWKZhmvFQRQgepgAjhLrSgsUk045ROnJnYiq0xr65qezOjr6n4F+OeG+63jwJerFlpQ5XHui8W0de4JXjoKajC3MbsgT6IYkWbvN8Js2kATa4Q8j20sm1AWcOl5zqlCoo/LPm0/gCPqZz6jQy8qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LNy5rvrM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BqgtRjHg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKrLm2764423
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:26:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kpdgk3joxMChu4E1gW7/tT1GkFwhKf1tpGpGIp7IAcA=; b=LNy5rvrMJKzXqo+o
	lR0/JugV7NvzveuMobQ5QjXIzsUF1JSiC4p+o1F6bFowgvQ3bqRvS+np6jJoWZjl
	Z+bdGawUwn95OZeVou7MuektFf9qxgZaIp/saqKSk5MZ8cGVwwB9p9znPEW76+kf
	wSXkVGau+XMsDLIerbeZJ1n5qDCCpnksAefxXHOGY3cPksNta07etx0Lhhz/tCWM
	l8wPGkq/N3pvRNR/Ub0k8uxJpvjVbqL4UHAMP5pg/fCIYDxwua+xPDC06ps8HwKo
	mTg8rRYuoNBHqu5UVKdvHN5mxodX1MaV3DugrzXLcyutY6JpB0T2tYivTLGCShm2
	eL7Uxg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3fefjcgm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:26:10 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88888e86e26so16697406d6.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 04:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765974370; x=1766579170; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kpdgk3joxMChu4E1gW7/tT1GkFwhKf1tpGpGIp7IAcA=;
        b=BqgtRjHgO0jd2Dvqu0QvtNoJBl+1TKJQdqX5IEo3vR5h+J7y/xs1HpT+L7TNdjsZtu
         nt+pAqJWKwykT2pxq8IhSrk6JGL1FGy2mvQh/OmYMK7/Lc4/nrlBicDyogYGpMxJkE6r
         1AxjCYvshx/ppomw/KJwxJ5a8es3XB43EAk1YuSQxIAzHhz1biy0eQb0e8sFpfzeJjY5
         QeDDB4M3fSBh8xeh51U9Dt2rGN+EWZNUrCABDhaQur4gdv0rHYxnubiVIQK7pxjH6lsQ
         oezwHI43agQAHkCBf5zRBLGpe/hNyGGNlOtXnGEFk57pZI0kybO34MEc+I4sn8NGbNHr
         D2Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765974370; x=1766579170;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kpdgk3joxMChu4E1gW7/tT1GkFwhKf1tpGpGIp7IAcA=;
        b=VrI1iiCGHHDav4THzPqw2o1z4kNWrFzFBEZYd8zyhDuCmpl5QNSwRc5XCfHwitNI7s
         iuF/Ryd2O21ZsYAl1ruL+AlPqGGFdSFEPI/+1I0lsCnAv8kHZ27nO0ixUAuaMzyi/UVj
         fQcKaboqgjN36B4uuOdPiEAZ8TauSECU+z9cwStcWcf9pWAWrqMvUe40bY/dxD2mJvOp
         vGT2cGHfx//IAGSk1S1aLzpRc0o3B0mmv6KBehGuy4YDXsBy/efhi90zvmVkgjICm47x
         KAQFbE5cTK8NQZ33JSXRi1BEOMZVgxGM/PWXt1VHxXBHXV+frO6B588ZIOElehU89V95
         j+wg==
X-Forwarded-Encrypted: i=1; AJvYcCVWBe4CXt3Led7Q+s7abLNyPvYEsHp9YjzlCRP60en/l795RHUJlV9Ma+ubjMGt6Gkqkc+aPmSaJXEz@vger.kernel.org
X-Gm-Message-State: AOJu0Yzy5ZsZba+7DFZo/9OfdybKNajCkENPM3d9Ty/1qQKkpRdc8X1m
	k1+zSo2IHKxEKu+OGXem298ZVvvzNXW9yNnkmZhL1aY/nQuUTEX9hhM34UCSW+q5W3AQFMJWCgz
	OkUillvnSKyM54b+bs0g/qIXuvm42gDwtSENveKhifkrbrNFGQ14tEd71BBjzutjl
X-Gm-Gg: AY/fxX4HWnupoKhVdetj7zQAjczRYLNuoFxObGMJ3nyiYVb+br63KS50Cra9fzdXmXg
	c/samYgvY1udIGCVL7L9QiNjwvRLEcdZ+dSJnIsWBZ3MzuW3iEqL6laToAxjrgD5tQ9fXybCt5n
	1oZyeRuoHXz0LbcDgKCTDmyOU5sejcdoIJgFFZtUFxFnuNt+4bgVr5BjHgOcRHF+nrvnPPrFCc1
	VsCxHervwY0PWPnrRB9mMZug1fKwgJWhEaR0Nw5Sfcnv5s4yJOLgAonCCALyW3aB6CHfPPQ6GGr
	Py0yLSfx7SiLKYjf8vgc1MVs1nk5cJMVLWIbeH05x0GVJoE9izMiiN2bB7Jhx+fyzgIpQCXmTZJ
	4OoRP4mZZYwowoBNLZYt99IWOe2hixX2Igwo+imI3wtMGLpxmnHa3YcGJwHoJ2rIJIA==
X-Received: by 2002:a05:622a:28a:b0:4eb:9cb1:c290 with SMTP id d75a77b69052e-4f1d05055a4mr189247981cf.4.1765974369590;
        Wed, 17 Dec 2025 04:26:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEM2MldRz1oQoLZ8y4vGWKM5zqNK1ePwyoEfZp+aNFz9BnkzSv7Rdia3p0qOY4gD2bA9awhIQ==
X-Received: by 2002:a05:622a:28a:b0:4eb:9cb1:c290 with SMTP id d75a77b69052e-4f1d05055a4mr189247771cf.4.1765974369189;
        Wed, 17 Dec 2025 04:26:09 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b3f563bb6sm2246734a12.20.2025.12.17.04.26.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 04:26:08 -0800 (PST)
Message-ID: <424a58f1-9edf-4b28-9dd1-18b5019fba62@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 13:26:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: SM8750: Enable CPUFreq support
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251211-sm8750-cpufreq-v1-0-394609e8d624@oss.qualcomm.com>
 <20251211-sm8750-cpufreq-v1-2-394609e8d624@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251211-sm8750-cpufreq-v1-2-394609e8d624@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA5NyBTYWx0ZWRfX+7QORYnv+na7
 tHuxxSbiVbeMEjRstFnsxBB41/MImJfNfy90TXtB5h9vhNyQt6HRmwKRtxISeyHD5lE4RiwuIc7
 9eOwa9W15u5bePaw6DjpRQYwVcPkjj3vde4jQFTIeXoSWyA1FVvv9GRtTecy6K1Ayl1vDNc4I5t
 ZxCMXQ6A2d4h3zINo/RJXDgjzBrz/9ceVTnHBpiLVYKKCZYmNxNHPcPZ/vnAjm2M9sa2RwVgTRn
 1UXtwJeorNTlfaxpEIH9g8acy6qPqGbr0wpJNQw5nVD1kr86h/mcXP76XI1xvXenTKH5O1rpE0H
 ll5caDbr0N1/6F7sXvPvFBO+kKf97BilOh3S3j9kuRXIlYJJB6fzqne90zFpE2WEsUOOGPGj2qS
 rMwB+YLnpOnPPVXdFNNbqXXGRbRS1Q==
X-Proofpoint-ORIG-GUID: 6OCyUjzBPV6pqdIaTmCJ_lQnSU7tNUos
X-Proofpoint-GUID: 6OCyUjzBPV6pqdIaTmCJ_lQnSU7tNUos
X-Authority-Analysis: v=2.4 cv=R48O2NRX c=1 sm=1 tr=0 ts=6942a162 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=54GCY2OcYghDP3SkkFsA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170097

On 12/10/25 8:02 PM, Jagadeesh Kona wrote:
> Add the cpucp mailbox, sram and SCMI nodes required to enable
> the CPUFreq support using the SCMI perf protocol on SM8750 SoCs.
> 
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

