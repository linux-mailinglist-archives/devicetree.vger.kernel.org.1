Return-Path: <devicetree+bounces-259843-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDROCNSjeGmGrgEAu9opvQ
	(envelope-from <devicetree+bounces-259843-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:39:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BFA93B25
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:38:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 93EBC3002F42
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90149347FED;
	Tue, 27 Jan 2026 11:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O/5zBG0F";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aXemKso1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BACE346E5F
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769513935; cv=none; b=RPEi6zEFYm7t58VHAVIuOOABuqos4TLeGH8zI3PBVyKN7aPlND7njACvLl7W/ZxtVCIkTKebnOYGVoerYIrOepIAWh3fo0s1W/bKlDll+KPhnbAb5o0C+kME52yagAoCo6w42R2wd24gNoXbRyBLIFhbzW3YZ3lLt3I6mYX30AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769513935; c=relaxed/simple;
	bh=4pV20Gz9PKwkZ5/VngqKVCw/t1dMQ1g/M1OVB/nOx1A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yh1m+BeaavNOspoxOKpTEG6CmawUNFnjr7X4Gzee+7KX96D7lqkwsxHGVVxHgeSpvAOevEjBZASet7aahUJi9/pbmF6lu7xq5vjEcYLahKcoxtfNUrag1uNruPNW1tfO98Pf/T2LNl7Cxo17MO6uJ7jWUT7xjLJ9DC97pOY9wNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O/5zBG0F; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aXemKso1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R7S7EV113343
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:38:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4hz1SIJhR6/vturCkaD5yeEklndzYcQeAIiFV50Y8hw=; b=O/5zBG0FqC4pjx+/
	Hzf+OU1yoBRVL2BlNqOqW0cf0k1i2+uy8asbNlf18ytOg3BIbrGI0UpnJ+nVx2Hj
	MigAON63PLkrin0ZEt7MpwTuuqFtUhBMORfkA+71ukfhbcwOKLWQDcG8NXVTFhH5
	F/TFMdbzzHxP/g/xqh//+axReJktHijuZy6WNSQPs0b053kF1W6ZBaB/aVqOs/5z
	fd2F/c9mwhTBYfzuulJMmp1bzr+jF03j5PYBfWCKG563NgZ7jxv703hDSYlI5Yyi
	UXhpEG64NTvTm0l6vcIhxkolYp5XKskclpmusMzAxaAwcwZayJzikOGWU9rUbhRF
	pRzw9g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxs0e0w3d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:38:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-502aca58e75so13797571cf.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:38:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769513932; x=1770118732; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4hz1SIJhR6/vturCkaD5yeEklndzYcQeAIiFV50Y8hw=;
        b=aXemKso1F5LYrqPc4OIMy/vbWAhXmSTfy2CCLMnFW0Z9W+rdwIyEBcouH5c/JRY8Xo
         5xnkv0b/UyKR9ry9ChRCTVG7mHqxCjpaaXXUpNwLtkzarK99qKMwkv7YxKZlZIL5sewl
         zB7mrsrTgNtkfDS/XE/Bbu3DY4Hi83XKhdtrAThNHnci2HJc5V/RyoQTbU1IZhQri2gA
         +514uRKGxCG9J4PPvymQkU0KBa3jhJM3ORBu+pe/0Lk7768E7YJTa/Y/888gPnOaqBFL
         Ku5uR5cnRTqR+zu2xNzPl/uii19uBkOsg9r+vdvDfExa+8yOJYDL5q0m+6TPime5E3zn
         /Wnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769513932; x=1770118732;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4hz1SIJhR6/vturCkaD5yeEklndzYcQeAIiFV50Y8hw=;
        b=sewKAvJL4lJD5JWftXSo5j4xazK9gDpxiC2JtZhd5ujznsxmKFQYQ4tuEV7Uqlt+dv
         PcQ5rg+W8Y4b6bYw9a4nP6TLaImKxMPmuYmfSnjhZ5e4cjFHnaTbDTZwnM6uRo+EbHm+
         hhh/r7jtu/d2jvLAVHTm3t7BsEnF/PhS52QYBJBXbowAdug7HZN8I1+oTbMJZw5gjBjJ
         5+Seh4YHqYYDWGXxorSTuJUPlawz9aJlHOFXbGRiKoW8nJlYXqU2B19CHMdQkDfSo+Pv
         NOU8pc0eAXu7M/jnsvcGhAAJbUH4z293x0hFF3dkv/MwyNXyTsAFQcKKQUs7VtEzXTUG
         KBdw==
X-Forwarded-Encrypted: i=1; AJvYcCWYs5SYfA08n26sg/RzOeIcDZkv5Zj0E6vzr5Dxn/BKkEe4B6u8dwE+c59vABiB7I7UtESh7jxCGDYq@vger.kernel.org
X-Gm-Message-State: AOJu0YwoAwKbze1CYQX+CefZ057L8WyPysASSebYXZIIt8H4pcpPfm5b
	d/K8WVBcN+tVC3FyqpNcaw1sazeeMmLq3sp4NS97IdXXB74lkbA2NFTOSu3g32DWnUpBPoTyCAA
	6peAze4/C0EcYWjN1UbAqSVzpEaANuB+8l/wmW7eINw/lpLnpiRkA2+exD1iUzbf4
X-Gm-Gg: AZuq6aJGYv9EtnpXiUEyQshT3UhI2sPBSSE9iH+iuASILXJdeZrISuO1bTdPfcohjz7
	jd2ihb16mf2OB1MIzEOBRFr5MQmKSHveYf/RkbGXHJHs/WiFrSTqBTEJA2L8XDFBOXFcUrWOoMi
	42R7fDH9xXxeDApXe5QJAGLpTuwR0QKg3Z5BLHpqbSoK2UqRZ/6a7gLZyo0w0W34Zr0waAK1FwM
	720sPzd+/0Qt+2WKmxNiz6hghbuYkVYQKxN1OvMHI7QAI9QH8TdWuA57qPrXFqKltPi7R80XU77
	wF0EEuA48e+X/cyKHsrGSsGI7BQPcdWdeRqG7UzEx27EKjQqMWXXV7oR8nbfbvrRW+ko3ExczBl
	dFph9RGS9QrmslLZblj3R6G3k0e17wYmdMXz2jNIYbGPQJ35xfTgXH5Oo96r/MUbf/Vs=
X-Received: by 2002:ac8:7f41:0:b0:502:9a94:2f87 with SMTP id d75a77b69052e-5032f9f29e6mr11148641cf.7.1769513932464;
        Tue, 27 Jan 2026 03:38:52 -0800 (PST)
X-Received: by 2002:ac8:7f41:0:b0:502:9a94:2f87 with SMTP id d75a77b69052e-5032f9f29e6mr11148421cf.7.1769513932029;
        Tue, 27 Jan 2026 03:38:52 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b3e054fsm6509873a12.7.2026.01.27.03.38.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 03:38:51 -0800 (PST)
Message-ID: <431d614a-ae8f-4174-aa6c-aeabe85ca10e@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 12:38:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] arm64: dts: qcom: sc7280-chrome-common: disable
 Venus
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
References: <20260126-venus-iris-flip-switch-v2-0-b0ea05e1739a@oss.qualcomm.com>
 <20260126-venus-iris-flip-switch-v2-1-b0ea05e1739a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260126-venus-iris-flip-switch-v2-1-b0ea05e1739a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5NSBTYWx0ZWRfX4OMwKXxAaENs
 fMKnuCX8bQ5nEVp4mz/cYZ67h5PGVeG5fyqHDvhXVnCX6JRNlKu8e0KZ0HWTGYsyfyR13wfrp05
 +VynWETxppeAyjVU0iv6r5bPxnoyu9/1/2q3m4JxNi7W07isbwrzaEYCvRzFC5/eIF+DgG9xyQ8
 aObfTUQoiQaeo/6xVOda/XVNuDuXew59OrBN9en01UV8eOukIQO05VjbxRwAi6d6ck+dyo6uX+H
 lGubHRUpQFs4bx6yPWDg4N+luSPBWwB+wToqLN2AUcCcvOaIelORm3RxdxvukryZqjzeH5UW+Tc
 J1R013sfkCbCp7XwkEe8pCoBTG3DvCUXz6fJckCJKho7Ks1jvgrHiHRA7BKLNafru27CN7FN3aa
 TSF9EpVvBFAzPM2UMVBMYSjvOB2DheQz7FLVbkYpF4ZsRCJxwr9KwYJ91knjrKXBojrJ+iABe97
 DIskJy9YjMGBae6IzkA==
X-Proofpoint-ORIG-GUID: -pLicRe3c1mcrV-yi0FVmWUR3-HaZyX2
X-Authority-Analysis: v=2.4 cv=Hvh72kTS c=1 sm=1 tr=0 ts=6978a3cd cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=cm27Pg_UAAAA:8 a=EUspDBNiAAAA:8
 a=znYhJWbmiJ-TVPbaOPcA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: -pLicRe3c1mcrV-yi0FVmWUR3-HaZyX2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270095
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-259843-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:email,qualcomm.com:email,qualcomm.com:dkim,linaro.org:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 31BFA93B25
X-Rspamd-Action: no action

On 1/26/26 3:09 AM, Dmitry Baryshkov wrote:
> Iris driver doesn't support non-PAS/TZ setup for setting up the Iris
> core. It's expected that the ABI that is going to be used in a long-term
> would be different from the defined venus-firmware subnode.
> 
> Granted that the SC7280 Chromebooks were cancelled before reaching wide
> audience and granted the feature ABI changes, drop venus configuration
> for SC7280 ChromeOS devices.
> 
> Suggested-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> Cc: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

