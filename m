Return-Path: <devicetree+bounces-250250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4038DCE73C1
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 16:40:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D938300E3E4
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 15:39:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE460320A22;
	Mon, 29 Dec 2025 15:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DwDGlRyB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QmeiN8Q+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74106272E41
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 15:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767022766; cv=none; b=egMLFperp7ckbdKxG6kfrl8H+SsqS8YEP1Pe/+CcgyJoBZjz6xNJkceceB1IEG71l47oILPYyEwdN2m6VPfqjZOfeEEOMeDjMY6gCbeVzkIUR4tG42n/ExsGyKl546ynhnm7r/1v36YQkV8M0q/2z3xShv+gGT9dyzDVl2szM80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767022766; c=relaxed/simple;
	bh=m5wk7DPA5PPC1RkT7jGwYDcd9T8ByltOzgI3xVjVfYk=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=YE4oeQdTi2hEIfIhSHLxfeSFQl4CqdaLp2iP+JXsJYSuDA1uzeORFLCKoH9No/fB6b0XhuSk6fS4I/9Z62HnAjb2+YNkbMIJ2nLAL117qBgatfGUGkNWBdLaylqah7IrNZ21gQiO68OIjrseCknvij77A+Km2eD+Zm8kmgOhbls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DwDGlRyB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QmeiN8Q+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTAHA8E1446519
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 15:39:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QDqhvoKuT1ONkqv4vqVemJrZs971EDuQB/aPFvgZPY4=; b=DwDGlRyBczg1A74/
	ka+spwa0HE+4kwZbH1S53DnvTiJcm6N39Px+sXfnCD3ILFC9et8/xlHiNopVZdvL
	XAUsjhoQOSu46guqOZ4sS9yM34lBtHDS9y+QrTszxsH1SQs4riieMiTxEFuaquD2
	8f//B3i/t4DQzaPXjaW/bwQ7s0eg3ZndXwmZ70meX+rw5K2A1y+/RA2d89hBx9Ah
	MfORKQn4E/Y1eboaMHQ3yA9shW5I67f1FrNu0TLF+11dtYOekeAAKflxmvOU+QKn
	q/E7G4qAq2YZHvBZFi+zTPRHv5VKlxlWiN40ZNvsc/Wd5rPi/qyuHTmuqdx01qAL
	NHxzmw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bavrj376f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 15:39:24 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edaa289e0dso30597411cf.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 07:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767022764; x=1767627564; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QDqhvoKuT1ONkqv4vqVemJrZs971EDuQB/aPFvgZPY4=;
        b=QmeiN8Q+wPREL8LVV++Ur4Hty3BHpd/3MAXySEDPKZniffMTqmdYBpCSWMVV47qWL8
         h7V4lsz1AXhHXT+cnoZOiu5BIVYw8Ut6MHSoe4KglauGASvcKijziG9dF9Sf4RxWd1qd
         otA8FQoHIThKGLmmeovhFybqr4bFWFala61G04j4qxa9ZjBtssfiPRx66gpo5CyoDkZa
         MtFyK5+HdpsqAls0NZemh5w+iKfkocfjxPhkExKf0bOgYAHwAleX/BU6VnkNEKJ6/3y7
         aGJ1u+yQjSnrPgO5SM9efK7bsGfePCw4pdm+n3G67kjlyueqGoasE23VySkBIi0uwl22
         j1Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767022764; x=1767627564;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QDqhvoKuT1ONkqv4vqVemJrZs971EDuQB/aPFvgZPY4=;
        b=c25y5cdzL2yuNuZlKO5eaqICX/UwUP4oVWDok82FUpMiUUFjKds97o7/4j0of4QfRl
         386KjLfoUB/3ziwtZzJPKZpSArQol6DGy4jYkDBULf0FwaggItPj3wuu5GWyUtFG69K4
         5N5HLU2KuUri/68CiFK95+zt2f5sytCwbBakfkY3rlFN4Swmf7GzaZ7r4wH8UxsnDniI
         VjrvI5/zxihfr7RXo+JZDxx9ZmBJd7pfiD8K1WG33byDKuPTfTSXP98urKci+S+lMSHP
         OQnU82l2x+9ZmFpTLQ6QMALfFyUaP3hNACAKPahKesq/27vXSPYIx33xq+Abll24dcjY
         8Z9g==
X-Forwarded-Encrypted: i=1; AJvYcCX7QwIJML6REl/sWN/TxW6UN8pORjGqNPm048GjjI7jI8HBWJhkhyz761rPMHPXZbt8Su/6vVKnHj0b@vger.kernel.org
X-Gm-Message-State: AOJu0YxpNLlgHta2I3/7HM8BHRSNmx1lPl+CFHnrdT6JLDBpVgKNwcut
	ugilBGzMal8D3eNG5nVFCCHaOsnPudYmLPnUoJMNyKWI16phgQiMK3G1rz6979M35fMDPsEIsRA
	df9Wae+vokrOMwu1pwr3OiJmxLz3Ag1SW7SkkQob/ikVPnJF3GfV1SDvos0o1wtai
X-Gm-Gg: AY/fxX5c/a2EXcVawh2xJW/FXFIg5TQQQ73/6kEdBQfdgGD98WB6yB2Dnez0qRbVEQ6
	p6875yOXC1kG4EXe2ZPa+0Lbslmn0OjhjOBsTaBvyIwWXEYBv4mi6GXjMxKsXe4FiEE/8jj2Yvs
	McW3FUNKbU5OJt9ThTxpjlK5wNNU9Md5eOC6unePdrDjVjqvjJndFKFEBYIrgVYlHIM/gojFTaU
	aiExKVEKEfcKij1Si1UAuxvQChy190Io/+T3EKkAtULGhTGYNeJI6Cq6+7WqKkSbK7YUo6UjVky
	AaPBdHzn6gbzBg5LslJP7Z8ecxVL0jNHXh80UO/jYJhcvFSFsLwLxBsYDl79al2DVfYLXDCX6fA
	6xKmNYBrwCGOnNAIl02zeIc/R36e7dwnViqrxJ9Dnp5HFtgsUMOwX34t693/IX68L7g==
X-Received: by 2002:a05:622a:5c8:b0:4ed:a574:64cb with SMTP id d75a77b69052e-4f4abd173a9mr354271991cf.3.1767022763633;
        Mon, 29 Dec 2025 07:39:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHN4U3BzOmAKYg1rjSuR+S+ey+f7NfZQwB9jAllO+pOp4YI5Ip8XRHO1clZOJqarYKVd1WNMg==
X-Received: by 2002:a05:622a:5c8:b0:4ed:a574:64cb with SMTP id d75a77b69052e-4f4abd173a9mr354271661cf.3.1767022763136;
        Mon, 29 Dec 2025 07:39:23 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b910601c7sm31896142a12.14.2025.12.29.07.39.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 07:39:21 -0800 (PST)
Message-ID: <db8d9bb3-f702-4248-8b48-b610439a2ea4@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 16:39:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT] arm64: dts: qcom: sm6125-ginkgo: Fix missing msm-id
 subtype
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Gabriel Gonzales <semfault@disroot.org>
References: <20251229142806.241088-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251229142806.241088-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 58xnQfQV1aVZnBFZcdarQuvtJv7H0egr
X-Proofpoint-GUID: 58xnQfQV1aVZnBFZcdarQuvtJv7H0egr
X-Authority-Analysis: v=2.4 cv=coiWUl4i c=1 sm=1 tr=0 ts=6952a0ac cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=qntHbeqAf4i1FaGKydUA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDE0MyBTYWx0ZWRfX8sieBv4VXiCE
 330yzeBbc+gutoCRl7059ZbO+5PNQfETOYwpUtmV8R+aiYAC77dNlBYZ1foZRo8z1WobcdXkQsl
 7Tp6NL8z+lmns3K6FYbEe+Ou6AAD2q43DXHqMFRqZQwGliMJDzJADsOx/UOiPenR9kBNX7+g61e
 mG2/WV8tY1ysH2t0ufzyQ4bxNBQKEFzSX0DTNrnkoSzynlVkZNxAdfoTkow5dTFCiCI7T40x2u+
 E8nhv6aPCI1s27ss2/apb1Q+peY77LyLk19ZmCHbS9zc31aZQre99yT+bhtHfyERJB49xrH8tFi
 1dkS8Zkqt/y1YyvuT5dRIGtms+1KbTiKQn8/lJUutTfz+csFY4okl5/EKq+3NwWXtOO4JWWHXHE
 JsrKYsKg1BZdIpxlxMX3D0g+Hoi03z5cOUDgkAlZCr13F1Hc1ybanM8aHvn90SyjBu7B4J0+QlU
 2+j6X5ie4j57tDogFKg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_05,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 phishscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290143

On 12/29/25 3:28 PM, Krzysztof Kozlowski wrote:
> qcom,msm-id property must consist of two numbers, where the second
> number is the subtype, as reported by dtbs_check:
> 
>   sm6125-xiaomi-ginkgo.dtb: / (xiaomi,ginkgo): qcom,msm-id:0: [394] is too short
> 
> Xiaomi vendor DTS for Trinket IDP and QRD boards uses value of 0x10000,
> so put it here as well.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> index 68a237215bd1..6b68e391cf3e 100644
> --- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> @@ -19,7 +19,7 @@ / {
>  	chassis-type = "handset";
>  
>  	/* required for bootloader to select correct board */
> -	qcom,msm-id = <QCOM_ID_SM6125>;
> +	qcom,msm-id = <QCOM_ID_SM6125 0x10000>;

+Gabriel (the original contributor)

could you please confirm the phone still boots with that?

Konrad

