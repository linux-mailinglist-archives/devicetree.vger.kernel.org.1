Return-Path: <devicetree+bounces-246756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7877ACBFAAA
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:07:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DEC9430A2D80
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 20:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A63392459D7;
	Mon, 15 Dec 2025 19:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JaP7NIQm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XHc3kJT5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B20224AED
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 19:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765828291; cv=none; b=pTnan6j0/K6lE04MNQ5KKPFMScxeTeBfDdmtwK/7CVz7yOgGS6yPBHaERmCiBmBhm16chQHmkBQ6rtqD54OCmmSEa4naOKF+jfiK0hWJ2Ll8aNOhgY/KgUvKbpWowQXMNq6jv2Eoy7EgMLfY3YI4Xbgn+GI9rf/Yx+5rlJxANP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765828291; c=relaxed/simple;
	bh=aVmk3qRlwdz6mN4zqLMEo5ugflOPlLaYgaA42mxN91s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XRm30RYpPuGglEkkDn0xCDxPGEai6k5EyIVO9lkMUFnrIgJRqE1JiFJ17s3pEPBIm5XKCANFx3jP6ZDCSPqQXQ4LuyyCMEOgtBxnDuQK+cubG954Dzfw2iwLV6ByidbF60yaAThs0PpWyqrIY+L0fkA79cabdT5YVevyfESdTpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JaP7NIQm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XHc3kJT5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFGOs6Z1396476
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 19:51:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8zZ0wVZ6CGJG81lJ8F5lk5/TU8p/2rjklemmenOPYHc=; b=JaP7NIQm+vx2yYZL
	SjtLCJT0zTWchW10Z0kmh0ULx2CUE40/2Kaha7qqZqPyTJZgFQ24ObUQ7GtgkzKR
	8nG1dMsKSxSPnhYqxaEitHG+k/FPhwUyInIeuoBhDRNZxsZ6Svgpj5w9Nh4tWsxW
	VZVW3ykRkrBvhsV13vU2+DNg8tH9y2eoGH0z9aY8aawVPKveDUX8jfuWX0UmULVl
	Le8XBSzb+jahP1ZDfuxRsOG3n+yLqNnfb82Ji7vCA+9zAdFj5b+J9Ysqp9LVzsPR
	mo7pLQz6Tgym7WV21Ii1gi5sS5OXQiWCM8ZNyVX0CtJ3S8KtNJqDMCS+DUmrRRsR
	1k83iw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2nu1gjt5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 19:51:28 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1d7ac8339so111264071cf.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765828288; x=1766433088; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8zZ0wVZ6CGJG81lJ8F5lk5/TU8p/2rjklemmenOPYHc=;
        b=XHc3kJT5sFxdUsWyObu1YBZg89622/3j5Z4mAQPUXNT4snFvNrw5l8/1W1BT/Hdv3N
         LMbVg377hFJQMAsNhaiaJppoM+tIC43IFazB+cL32Jp6AAqdkPqtx2UxP/QBa896TGeO
         kLOJEXcwuoqAUDpP6hKNJxQ5XqbmcCfklw9HerFtruPB680b57mpRKslEphK13kQzpTM
         Jj/LRyCp4nb71Uh+czLn5rwt4klS5pgQV2zIXpSdwABIh6+ksJC+RSajIKL4Z14gRr94
         +jvOQnSIwTBNcMC9Y7YKpOXsHpT4e2+EPOsc1YOhhIzQ1w4OM2O0ZHwdWiHOIhxieMK+
         YmOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765828288; x=1766433088;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8zZ0wVZ6CGJG81lJ8F5lk5/TU8p/2rjklemmenOPYHc=;
        b=TJ3u9xkncgOhVel0x9gxfpzEXv+b8PsxecD4Ja2LAl91Kg5NIzG8PIgop9EbQcO4vE
         39boekNd1NbQS2ELSMEZDnd1y5VTTEYkfq3myyuAfqTVojKD8xuj4RyfNz2lQ+/p8oYa
         1/G4rOg9Gi+KrLyuZnV0d4jKHtksut418WU82FnI1oZma8O8MkfD53n039e4IQaM+A2z
         WWhDB/PgtB8bpPaQZ3Iq/76O7I96zbPUUSJEbmI4A9igwKhQL6LXc0eWiyrS7jvYbAKN
         c1KoOs+2S5VyOvth2ToX+IwqtuM3vfxAGoqoTNbziBt6KIhtRAABuh9ArBNd6JidnoTT
         8BQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHRs/ESuo4IB4kgCucKyFM1LvZajj8ofGoYdMdAkHQylx+4d9KZgGd5n3k3brvFLW2tUHSYEw/gSRq@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt4E/rOrEjSzCp5T7xfj2l570pH6VqHspdVYi5JdnXH/i2D28a
	2q0tqJ6Fm/aVWFJ19z77XRk9TDPzgaIaDZ0h/T3j85RyPgRhPFIGDKJOZISj+HOYT28AWqS3pYf
	lj6ML6mjIBov21LMhdjkNKxRi4bo4//tFeKixkMolc9V0+jMe5oSRPTH6mOG5Y6uq
X-Gm-Gg: AY/fxX6LS5eJcJE0cC8LzOZCdv/RV41b/eAwV8gN7tmoolzuqdof7tLZWh41GugofcH
	mVikuH5kqHz6DDX5+RXLwjdKRpyaHSN2qH8ii8INwbQxzIxXD3vGv8CWiMrGfADdls6Wt10olzU
	dOPAngSfC6rtBXaeslydHo04dQ91MwR/iW7GYFMkvDwQlhP3H4V/RRqKBO0N6DChQ3ws6VcCjIU
	sTcxVt+ShAE5G3udkpsQUTx1R1Z68hJfRZPuZAslLqGu1tBVFpz9GqTPcYfcTAfq09BlGqHsgsM
	TVwDaVZmd/qHFhitE4n5Sh/0bLiq79baZO+21S5v0XQQwex7wNBFjccZUjDsjqri/s9aPbqicBm
	bXto1nJ18zpkrvM36Oz6N0gQYq+/4utRWnv3NTPLGsc6EAeL2zLieXgSTqPl61SW2v8J5SgYjDZ
	ZaISZBxa5xhgYpKv6eG/ORExc=
X-Received: by 2002:a05:622a:138b:b0:4ee:28b8:f110 with SMTP id d75a77b69052e-4f1d04d43e4mr174778551cf.29.1765828288288;
        Mon, 15 Dec 2025 11:51:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHR2qqzf15w/PQE+3lVEkOfu7VDJB6n+c/cemYOJART+y1y9TjK4ViaJ5YvWAAh6xBm703xow==
X-Received: by 2002:a05:622a:138b:b0:4ee:28b8:f110 with SMTP id d75a77b69052e-4f1d04d43e4mr174778291cf.29.1765828287874;
        Mon, 15 Dec 2025 11:51:27 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5990d98c478sm101449e87.0.2025.12.15.11.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 11:51:27 -0800 (PST)
Date: Mon, 15 Dec 2025 21:51:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Adjust tsens thermal
 zone configuration
Message-ID: <zf5ztvnzaf6tplpjpytwbhktrebdnst2doybuubp6rjfj2fjs7@t2ma4ylx67gx>
References: <20251215105934.2428987-1-manaf.pallikunhi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251215105934.2428987-1-manaf.pallikunhi@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: j7I6oNr4Kv_tX7eNm461I_RG2k70dJg1
X-Proofpoint-GUID: j7I6oNr4Kv_tX7eNm461I_RG2k70dJg1
X-Authority-Analysis: v=2.4 cv=AOuEbwt4 c=1 sm=1 tr=0 ts=694066c0 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Q-NFahC57dXWrdbE1I8A:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDE3MSBTYWx0ZWRfX0AbCI/UF9QXA
 wLzopSrIeXzQLjucHoW4q6ezLpBgOqvAZRvKn4dThqVR2mE6Kn6WXWGLBNXNBPdCy3/YCz7ET6H
 JjVAAvErzd4egT62a37fom+taUR32Leo6QbQW5P4EylfJO2dvtX93Es6d8MYP8ShsaN8Ynav7FJ
 YW1NpZKpqy3ojNjsplRKeOyjJYnRG5/0AdRQZCc6e+JBfxsA2zSbQJaxy2yoV6SuBRsKsp8jVts
 QovWWEQEQ95w/46cgWkM03BsG5hcqVAYfCuzKuDmMCBPnZE5Q9J2UplV/LesBmh6ZtiCXEhxNpe
 09+qZEBA47eNwPPTYHaBFT3YdDp3gLGv3aCnkLD7Dkk4mPEPUBwyUCE7PsWqr2ka6XcHYjakheL
 gq+CICL6ndpS1/bLFKvEPM1OvqqziA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_04,2025-12-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512150171

On Mon, Dec 15, 2025 at 04:29:34PM +0530, Manaf Meethalavalappu Pallikunhi wrote:
> The QCS6490 rb3gen2 board uses the same Qualcomm QCM6490 platform

Is there a difference between QCS6490 and QCM6490 or between QC[SM]6490
and SC7280?

> but has a different thermal junction temperature specification
> due to package-level differences.
> 
> Update passive/hot trip thresholds to 105°C and critical trip
> thresholds to 115°C for various subsystem TSENS sensors.
> 
> Disable CPU cooling maps for CPU TSENS since CPU thermal mitigation
> is handled automatically in hardware on this board.

Is it a peculiarity of the RB3 Gen2 or is it that Chrome devices didn't
do it? What about QCM6490 IDP or FairPhone FP5?

> 
> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 334 +++++++++++++++++++
>  1 file changed, 334 insertions(+)
> 

-- 
With best wishes
Dmitry

