Return-Path: <devicetree+bounces-241146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0ECC7A3A5
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:41:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 4D37C2DF2E
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:41:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47EE7350D60;
	Fri, 21 Nov 2025 14:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YNViAVuW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ik3cP0Ob"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E98342C94
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763735956; cv=none; b=a+/Efw+3ERn2/KaL18r7cIUzgqpGBv6ZrECmNNvoQJJRfIeZ5dfpe2Xc1AlfTQ+IMTVC/+GHU7IIHYx7SO2mfOK6Jn56EiQkFYknoGnscZcdeXLx1fwlEHf8ljx5nElSYsGJ5t+MSXXlN5CL1pReHp3+hx0W1YLeRV4PlZeZ2RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763735956; c=relaxed/simple;
	bh=C2ujbzHakz3k2FGPtUel0s0om+iHTtJ1DQb9RNWfavQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ShC0b8vXzkNqqBa7Xstuwa1rxSem5DApbwIayUWw2a+2bWqZoEHM2JAicjRlYHWWt8YzW00wonaLKaqDkPE6/+TCNfgqgUqBgxFZrb2pqJ+SZR7NKgBUb94rzTCfQ0uTij4nwAJVRd+cTt+LoiFL5IE44F1sMR6iGnQESV+A4K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YNViAVuW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ik3cP0Ob; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ALB4A203911364
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:39:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Sr0hVkOXVGypAoFCY2ssxFetWfZ4bBT1gLeV6S+nVjg=; b=YNViAVuWfjDb14oW
	qgaRoNezoE7POzopCRuFtt9tnl3tHYyFM78T3d6xedJZBa499v5suJGewPhu48T8
	kHbIbKew7aZ1v2Lv15drGaq0IRolQZg+FM/IMw4Er37XLHF7j1gdD/rDxsK8JgcO
	ettFdJxeZipY2G8bCASulzdL0NheXOn50pRu4Kr5g9eJCdiVba2EHkiL1b58OBbm
	ApPZYPC3bw/1DimPMCFM8Nttx2Ixh+gjBVH+YURlRyef3I3qvFagkMLB396uUCDS
	CkrPEw0qN6asQDJLz375CwX8K8JJzBFDyGpUwMnzH69TVGXQ0Scnvzvq1ujeqyv8
	/J7s/w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajpvsgm36-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:39:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b29f90f9fdso52934085a.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:39:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763735948; x=1764340748; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sr0hVkOXVGypAoFCY2ssxFetWfZ4bBT1gLeV6S+nVjg=;
        b=ik3cP0ObifkgjMsTA8v0rOcZCxoCqZKHZP2K46Nxa5vaEeNrS5fG5ct+32PgvgbqQV
         rC02Tekfca4ohKKd0NhN1EECHOuUyx5nzHgfjsYSMdOYjnh650PH03SvX++kpNtMAeNT
         tMzsQKPs/Xd5yUFMJjWQCuaZQ9QUC0SiB7l7tjCzgPQQ5AUuypYQaVNGwxZf//TPif10
         qHQuItkJqAp9Feex+b8MPei9icRjbP+e7Lwjit12U6x/jjbSbDlcsXUGAZFVEr34q9E7
         qSMiTZUfJpbP/tCmZM/7wtZCTWKmX1ETxWPb0bJ58PpRRCghwuc1c5A1IJeo2MZDeBxJ
         sK4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763735948; x=1764340748;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sr0hVkOXVGypAoFCY2ssxFetWfZ4bBT1gLeV6S+nVjg=;
        b=qBqVQWaW+8MMq2tlw7+wGSjytMe+cIfbOkVF46Zh6RK9T4kCs43PfKqGsKy0+J1D1R
         3mxDZvwvdfCUpzed+YYMnPpl3uht4sSovRlstkayCpRLhdle7h9jau+plUqZ0ojKLmCY
         3xpHDC9D2nKLQzEuF/Xpa5kuZRrgiozDVVbwlSg8KMA4c1A8phR8UhGAYoTHEofmcX25
         Vn08i+pQjD4qb8Tf73yImHgH6SyIVIGkGqE7nhN34BmhKFMs4166zq8KQXRgLK5gOyJE
         36EK9zzTRkxzIzNm1LbjRYXWLwfhK17YKyv452SKDPjfeVBpVdUsb8p/w/NrY2NNThg9
         piyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVboOdZrO8Uv7LCIlSCJpeh+/naVB283AFN0mPIGZF9c1H+Bc/bKt15BDu/xTHQq0s4G10hsR0Y+Ao/@vger.kernel.org
X-Gm-Message-State: AOJu0YzC1/cec9g7UUPLu7DuKbQ7T+F1DMJiv1t4tXX0t7au6ngFA/WE
	hD20G5clfCkO/Z3uiuZ03+wHDFl8smUH1mpoa7jYRP8OAseD6vop19IpV9F9SiVaS8rdXLSr6f5
	zuegehTQbgAt/W9lJDOPk5QNO7J6niyRHyZxTVWpc6gY2Gui7CEzyEXvADqFLBUlt
X-Gm-Gg: ASbGnctvpi2Bc+QuaQHOy7QFVVTg3fzPcdg2Ko4Fu30JYtmSdMYxJ8jnUY950vqTojH
	g044A75pxvKYihnAx7k3l/OMIiOLEvAQtULkdk0PhOiz5rAUZmeAqrkddYCadSF3wlJTamFJuyk
	sIsgy6SDpqaJKyGqLb/kyy1Gw2K8MoFCgHMMEcsFpI8TW9HgwOktqMTQ1/Dw+zaeKWMEEfIPGRy
	5P7nPW1RRy21CvQxCnZBKA9NqGtBijWFK4m71iVkiDsW2H2LOK8gFIqGZ1qjXoWZbpuueKo9x7n
	4Rn2wkRGsdSTqodwtERYWQXtVuAG+7FrOqpbI/fXF3rYH0Pxux0Tfqw27lbVagr2GO6EEHEQZ+G
	FKyaWU6thk4/otsu83K8SkwwV5BSNOMiXTbi3HlxgxDNUEWoJlvKBMA35hIg9aeqvZCo=
X-Received: by 2002:a05:620a:4405:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8b33d274814mr188011985a.7.1763735947758;
        Fri, 21 Nov 2025 06:39:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFf/BP+LU8FzWhiCd4ND5JO33BI6Mho8KB9Cn73hlIfVcoLhEBrxKfF2LJJslfn3fHVFKyZGg==
X-Received: by 2002:a05:620a:4405:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8b33d274814mr188008585a.7.1763735947256;
        Fri, 21 Nov 2025 06:39:07 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654fd4e51sm476242066b.42.2025.11.21.06.39.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:39:06 -0800 (PST)
Message-ID: <b67e579f-1bf6-43d3-bddb-caf2989086cf@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 15:39:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/5] ARM: dts: qcom: msm8960: expressatt: Add more
 peripherals
To: guptarud@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251121-expressatt_nfc_accel_magn_light-v2-0-54ce493cc6cf@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251121-expressatt_nfc_accel_magn_light-v2-0-54ce493cc6cf@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: fkC_p9PaTeb4jokg2u05Y7UngizxdRBp
X-Proofpoint-ORIG-GUID: fkC_p9PaTeb4jokg2u05Y7UngizxdRBp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDEwNyBTYWx0ZWRfX55WZTFQP0nzj
 jVT2g9QEXdT30NWxpOtkyiA0FR0+QgDcNpdOll4YhcsFlT2T+y/jW29y8L+v9P8+uXTtnJSrSYt
 Tl/Jxi2DMiAJ4NGh7gUlZPK6/aqI4bwJhZ3Va/Gxx2rnzh6LxU7WGQNkiR44JaeAXH+j2ZJ7dFF
 6PcPMHTgZ0EkqK7SIdfDXEY5YzGbSGnl/qlNfKGd7VlLOewZRlaTm5rcTuc7/SaIg56z4O+llvs
 5E/kmVXivrCKxUl4YDMjHwDPdFlQ8WbSVQF1Wd6/T3tI1MFKB+w+xIm9dQGqo0gc7ReeZ73Gh4M
 MBETSlYst8xMd4kGnmvgP7dIzZYInErfcsF/5mGCYYJpNaY8YkjY0/UN+xX10LukJE/AfM7feRY
 MtOLxkmEjX9/hJxRdDbptVxACdlc4g==
X-Authority-Analysis: v=2.4 cv=MqFfKmae c=1 sm=1 tr=0 ts=6920798c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=CZU3aQCQu-085CoM26QA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210107

On 11/21/25 12:44 PM, Rudraksha Gupta via B4 Relay wrote:
> Intro:
> =================
> The following is now working on the Samsung Galaxy Express SGH-I437, an
> old 2012 Android phone:
> - Light Sensor
>     - Proximity is currently giving bogus values
> - NFC
> - Magnetometer
>     - Maybe need to update the mount matrix?
> - Accelerometer
>     - Maybe need to update the mount matrix?

[...]

> ---
> Changes in v2:
> - Fixed formatting issues
> - Use GSBI instead of i2c-gpio

I'm assuming this worked out fine for you and the devices are still
fully responsive?

Konrad

