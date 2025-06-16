Return-Path: <devicetree+bounces-186291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B3CADAF0C
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 13:49:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B2C7163202
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 11:49:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2E0129CB53;
	Mon, 16 Jun 2025 11:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YifN1pJ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 858262D9EE1
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750074537; cv=none; b=kHPF+fikX9hEpQYktVLe2bKa7nleaADCCKcH+3DQ/vm45ziKeLjn+RXfunCOmCHjAJgpMck49zs9yfTUKVWUntm2o5/g4Y43Nr+u5wyYTpmp3ty/ghWccz6WFVHKa6srCQz1vEUp3AdUIfgDM7pfelSjWkAJsLKLdWpiwMkC02U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750074537; c=relaxed/simple;
	bh=BkLu9G69YJ6aTmB+TBQoxLmyA6zp2jPwmkmcQrVRwso=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t8L5oCyYEq5DdADodKL8pgep5+tsByrM7LQ1Rqp6y8NnmxE3oNvTBPDZylBr6iNrg/w6jLGj9BJp9xG3phDipjx4NaO7/InmmyOoD3Ywds4Dt/Wap9/bREwh56ihU+vJxJlZOmtsDJQDOUZKHfGoarSS0vQh15q1WxGM9svyl1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YifN1pJ6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55G8TiQv012463
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:48:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	d6/D06xxCqY75P4dZWCXGqoyMfaO+umun8VIYzdcz4w=; b=YifN1pJ6HD1J/n9j
	AaPRvdBiQOFAboHrW3b2mXp8s+caPu5judd8SqIzBymH93AlvCMaoJIzRgC2frpV
	L/ZxD5crLjFJ8pMZ4XRxQgFZMoGaEDx0OqYgnx+1DdKmG7NebernRiW/ZPWjYqdQ
	e7QgUsyGEZdTsp5RYWQnnRmoCYMSBDv0GJlthscd/rLBwM88GgWR3jvIXOY9N9FJ
	86fIDKxLE3l8zI6exRPLdOY0psXLqHJ+zso00j1Kg2N2do3SZRroSeFVtf3IDYHN
	JnZvCYWjEf7dNXduNRcPmwbRws96LLi+HCnkv1YvAxYDT9NWEubNMfmGlTuPkbv2
	Ia8ppw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791hfcd20-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:48:55 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d09a3b806aso97333985a.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 04:48:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750074534; x=1750679334;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d6/D06xxCqY75P4dZWCXGqoyMfaO+umun8VIYzdcz4w=;
        b=BQ8PFFnF1qVifOlQg0TS3B5ElsNfjWYZpBszfqOTT9gLk9K9HwRe4rKPP6pnSAceFV
         +kP/gq6JFkfs/wu07VVWkM0GmMz0639lC+MG5xdJgeiR87fAbGYu4unMpkzXKcnfG9f0
         G2wIem/8MVAloQEXZjrhi9RlM6yYAiK82he6oFK57+Ia9Eqzw6jsq8dApFPiZqaKFAxT
         dBXXzbKHnbgAEou+UWIO1OX4m6Wf5aybdotuW0Aix38ectYhLVqB3xkFaYoFBzFYUTF8
         QdbfDC/8B2GhrniLc/vgP0o5zqGvY5KrYmG13ytPRnXfKxeQz84Xu5dmZuLH/Mn0t/Kb
         PFaQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgi8xdtvPMETBdM4s0eUWyoBWyybQn1aQMSKlohmWYA5xZ2f9uhWla4YXqEdf1sxLC5sge1Lv0QISJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzF7bpu5zbi2RYUh+2qJk/5qu0Uo+wZxjvG7tM3dZppLOcCoVa6
	tWq+E/ApC1wBegKX94GTs6rncEPZ72xp4EgypZwsbXYkaU81CT/KfO7ux6XcE8wnqwecq++uklT
	0CufAkk+62f0a+3VbV1T7CF2NvFXovChNb6v4dICzKwUNRmVbxlAXq2uwqnAgDwif
X-Gm-Gg: ASbGnct4+GNDK7A18X8geYkDLdxOd23uOqlOkczmpv64UI61F6VWrmL+re2PaKpLke8
	ZvOiExKw69xbSYv9bGZ5k+2grtUe33CN+Q76ne66/odPZKeGT69P3w/aQBMjEJfV+brTdbWwKmD
	3OKkF9R6A6oCPXqG4zMimGqaf5MlMBgGArZc3zzpEPlapI4RPKw4BYi1XuKnUt5Wjqy6TkbKgQh
	zQQnVgibtMjsKxhoYtjU7QuY3SySUhUDbAWTvsb7i7lt1mDuGyCP2f5XUUJQiR0vFZrMvccAgu6
	c8W/nxRHfzhWAkYLFLNiprLWwcPgD4iOo/KNdUM+KhFm5icreElYX8pfMQAZTvE9ukIJWzHPFoF
	I3kY=
X-Received: by 2002:a0c:f40b:0:b0:6fa:b8a1:abaa with SMTP id 6a1803df08f44-6fb473e4444mr59374996d6.0.1750074534178;
        Mon, 16 Jun 2025 04:48:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3/rMsOcLm7IFjSZLurpNjrZv8j9ZV89uGTTRbl2ahszQMIMiFTtrHi7mWnIkZP1XB0Jf3+w==
X-Received: by 2002:a0c:f40b:0:b0:6fa:b8a1:abaa with SMTP id 6a1803df08f44-6fb473e4444mr59374776d6.0.1750074533757;
        Mon, 16 Jun 2025 04:48:53 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec81c5c3bsm651750366b.61.2025.06.16.04.48.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 04:48:53 -0700 (PDT)
Message-ID: <7335dead-da35-43ce-8338-8383db948768@oss.qualcomm.com>
Date: Mon, 16 Jun 2025 13:48:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] ARM: dts: qcom: add device tree for Sony Xperia SP
To: Antony Kurniawan Soemardi <linux@smankusors.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Max Shevchenko <wctrl@proton.me>,
        Rudraksha Gupta <guptarud@gmail.com>
References: <20250614-msm8960-sdcard-v1-0-ccce629428b6@smankusors.com>
 <20250614-msm8960-sdcard-v1-5-ccce629428b6@smankusors.com>
 <f1284637-7650-498a-b850-b5140c47e4e0@oss.qualcomm.com>
 <39a7153e-1a4f-4dfc-a190-3b3370646d47@smankusors.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <39a7153e-1a4f-4dfc-a190-3b3370646d47@smankusors.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDA3MiBTYWx0ZWRfX0YmzoH5Mq9N3
 WI04qEOxWcdZBtUbEYB8eGPjNX2l3gxvb4hJOx1h0ignXJ/ZiDEFPBlYoQfkZXOroA/ooYCzdRh
 hwlCVFKhW84J90u1tdQI6vDexYlLQ9IFZRKqR33rSgrvXDo2hxcAcET3XGOSlkx6tQ7awh01/z+
 +KQN9Iv0Tvi+ri81IMHBubpZRrEbKfTJEzkHwSWrVVSbFHtsVmxwJ+cVb6t23FxDEHMP517y1PG
 zwbseqm5VuuQvLPikgZuWtsVnTAaNKFSlFkiUI/gUnAoUEQKDIV+mpdftm6iPiO4gc8HiazASyE
 sdTU2Gb2t+A1/7V4rM6RmXRgMRglNLd6uAWtndBWvhsYge7cC7oKiq61xpA3QXo19iWY00PBn55
 YpyLuXnd/fa2yuqMfOHtg4Ge/fDzd4lpVRVcSP0rtdwFdfFsQKThiym46nNnwBVGr6PTX2kJ
X-Authority-Analysis: v=2.4 cv=VvEjA/2n c=1 sm=1 tr=0 ts=685004a7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=Gbw9aFdXAAAA:8 a=2t8RrQqO_CiJknku0qEA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-GUID: 7KX-kJ3kgeudEl1k9jNk8UUQDhYI9yZn
X-Proofpoint-ORIG-GUID: 7KX-kJ3kgeudEl1k9jNk8UUQDhYI9yZn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_05,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=987
 malwarescore=0 impostorscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506160072

On 6/14/25 10:46 PM, Antony Kurniawan Soemardi wrote:
> On 6/15/2025 1:36 AM, Konrad Dybcio wrote:
>> IIUC (and that's a 10yo range memory), SP had some eyebrow-rising boot
>> flow (some partitions were non-standard?) - could you please add a
>> paragraph about it in the commit message if that's the case, and maybe
>> include a short how-to on booting the thing?
> Is it acceptable to provide the pmOS wiki link in the commit message instead?
> https://wiki.postmarketos.org/wiki/Sony_Xperia_SP_(sony-huashan)
> 
> Or should I include a paragraph explaining it? It might be lengthy since
> I'd need to add download links for the mkelf and the RPM blob.

A link is okay in this case - pmOS wiki has been with us for a while and
I don't expect it to go down anytime soon.

Konrad

