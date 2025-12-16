Return-Path: <devicetree+bounces-246995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F03CC2C10
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:32:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 550243033685
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6AC63659E3;
	Tue, 16 Dec 2025 12:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="doFcqeEf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q3BE4x9H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB57364EA6
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765887007; cv=none; b=bE3+Cy/I5OqEUz3rM5vP+uAuwRtRJyuqUbelRhAhayQuHd/syvhNSn4VcHFTV0yfbz82V7n4PrL2yIXIfyKdHCEhpE29zRKcSxkPE2vpH5tKzjy20ROya4xrCARbie6XXW0jJFu2HIUGz4tKWS3UxNbAsdy789JYjGRGeDQlukU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765887007; c=relaxed/simple;
	bh=2Ng8otDPDABpJwJ9f2yBpnv+lm9Xsl5zOl56SaOeJZY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BJ/dg8Kb9KJiCCO/nE+Pn0eRHN+y6m2k4uNL9hNO6G4csP9zYUpLRUrQIjrTAZ+YDybMO6RdqUGsBmaeCHgNZ4o6dPmvQM26r2ngo0KApaWt14MV2uNS6ma/Jcvn4SU1WrBTgSA5a/7QH9qdJvQOVWZUPRvzi0c9zNNhsaAhhmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=doFcqeEf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q3BE4x9H; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGBOIZI3391038
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:10:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ya/r8Ga9fgqMh4F3HKAbEmR3SCxnariYvDHAqOIGXyA=; b=doFcqeEf+MNONnhP
	MR9kNQgOwMo2baAkxyeXNu91flf0RAbd8tENzt2Shmd3PVndwwlfykA0cdGh3o9y
	VurZA4Ym9JZsP8f7z1ecYBNDZ6550A9ff0LNZUjwfjyWGcroQf2dJ7VByzifBdiL
	UH4Uky22Q4UwZUkejP4tmnKvPcNJlxpj9hA6dWuO6/FgdIodHVrTF+GCrMFyI2cQ
	zqnAQeW/QSB4Ljbns8mJgh2c6TZ0Y7OBKqX/WZbFMXuhuUjOAX+/R8ItgJ37hK2T
	Cr6k4zY/kB3qYavGvxqg4WsVdcdsyCW5eVfLP/QWWp/SIgGfoppfg1R3my8bITxg
	xBmLGQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b36h38553-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:10:05 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edaa289e0dso18174361cf.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 04:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765887005; x=1766491805; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ya/r8Ga9fgqMh4F3HKAbEmR3SCxnariYvDHAqOIGXyA=;
        b=Q3BE4x9HecAd/ynYMZuagvma1fKLIrebHr7kKyBpYYNkdugnG0iD5F9IMod0AGJvGB
         yFL+tmWMQvfcvuyQUHgs66+u2fwrsP22B3uNOMIzM8xphuhwp9jw4ooOxXVzimNygaDr
         1pex0MK26EMHotULmmqnp5RwIw6f3Nk/qIinC6AGewivEaCx59HsiPZJ8a9FQblr5+uT
         70txL4qRQW72sNVZMJ43T7nb7/+K61RGCZSKuICwaCoR9xrdlacLhGs72SvqOzq2/BQJ
         LpmFoXpBkP1RxvfepEknVdfoZjCn6LpfvpCAhPwKTjnzI6DUzfUB/KKob4geaJci8LXP
         huAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765887005; x=1766491805;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ya/r8Ga9fgqMh4F3HKAbEmR3SCxnariYvDHAqOIGXyA=;
        b=a+8uR+xy29dxfc0eWCtx7oR0mi30oK0WkMVpo998GjW5ZzAgpmzg2W/1CntCKxWtg0
         UQHwusVCdaPkxsg3HDmZxdTXS5nfr9fGCS+YAyI/78kl4CYuENFNXoM+/1No+aUrslrc
         bAU012ssB6QNtD5tREtczKytrLQ2OEWJazoJ2Z4fpjkFnY2hMQ4mrAD0hR8ae356lTRl
         MNlfJQl2rG+voP/PxvITQxjq00xgggHhTdtVW12jRjteV3zUslliH/sJGiYmDlVqJv+w
         hmI366IIpTC+DET9q8MChCLLAD17jbhC2XnSZVctZ00Pl7GqECSp/rE8B/wxre8HBhtZ
         +VhQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxYPSRdiV99vzdlWrRm+YRFhavJZVbsu1dkTx/q5MlldP5Q6ZnnRnELM1ZGHrWOAC8m+JL6bxx31fS@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu2kjZ3LIGEuOiS5CgDtQzKKIfjnCJInBCwamGhl9gulmn9WHl
	EFiqvOed/+A5KM/UwUU1KEX1PHp4iMskVGzipyVUtuloDC6jtVm+ySwrmRwaLdglaafUWVY6FW4
	XOYcjEiZhVUVKvd47n+gN/xbp/sj673PfEF4EmcOlXWsQI5igN0M1nVDxyl0WZWv5
X-Gm-Gg: AY/fxX6STQWeIcH5GaEabs4Awdtuv7Q9cnNDDoCEy8IYhvl4vWn1Qaz4sqIN4gkMVmp
	4yXU14P7VpSWrY7rh0BhjCUPaRtr/fYIeF71cuXVudRH1frs39lXIAGqW5q1hne1ngTuW9IoU4/
	Re44vnLyq/bGHE6N1vQUjFjTUhUSJt2l9wA0uzTTrNpBGmdL08PSOKTleWJWOqpoqMEivKB7+Rk
	4ovCdyoCgsKFbvpdIUSrteI9ROsX9Ku/Raqn+BvNEI8g4nDflV3lJNO4bhGoXw5Ls4bZxEiCc9m
	NR+/hVne3EbwOcU1dLv4bvxSJBs7PuJby/Evt6hi+X2+SyYS8XXmC54hY/fiFu3MPoMYApGaMSZ
	scxW4bSze9sAgJ9hyjwlObS2dUBmmiR7YoRHBpwhLr/pxRSNjAvBIv42bOoexzw3Qgg==
X-Received: by 2002:a05:622a:5cf:b0:4ee:1e33:bc45 with SMTP id d75a77b69052e-4f1d0520a7amr168791771cf.5.1765887004946;
        Tue, 16 Dec 2025 04:10:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHI49moqnLw/Xuz0GAX9vTq1WwwC3hKc0bhx0+EqN56QKBJaEA+WgN++Iui7m2A10BQEI5kFQ==
X-Received: by 2002:a05:622a:5cf:b0:4ee:1e33:bc45 with SMTP id d75a77b69052e-4f1d0520a7amr168791541cf.5.1765887004566;
        Tue, 16 Dec 2025 04:10:04 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa3456casm1637491466b.30.2025.12.16.04.10.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 04:10:04 -0800 (PST)
Message-ID: <5cb03638-1db8-4681-9504-80654f32cd83@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 13:10:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: qcom: sm7225-fairphone-fp4: Add camera
 EEPROMs
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
 <20251210-fp4-cam-prep-v1-2-0eacbff271ec@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251210-fp4-cam-prep-v1-2-0eacbff271ec@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEwMyBTYWx0ZWRfX+zJqsiMLvUvo
 CCe/9yW9zMYJL47sBv8zAj0oHc5Yyf1FSS3TVs6Sa1CP+hDblksrj3+HGRfG2BZdEtrV3OjTgzl
 73BnZ2rAWF05paNhmCZbMcIOJ11XPQDad5AyOCMJ5OA1BEwiZe4HVNkyyDYULretZf/bWLiu1ZQ
 44HNErpBD43pbJaspqjN3CUZq9uQizhDgKQbst0FiP7VMK8Bn7SQjLKLfpI0mKseMuCgDKNPgJF
 mfq3QHEgP3OHpurLyLkjn6FYs4aZQ91dphVVH9Hy7NRpj4wlf4Tt7ckJ6YEjkvGmPqbJGUW3WX4
 V1LDBg+dh0R6C9+flBETqUsAXhoG5ZGiSjc/VyhpNzKL3qzA1PggEhTqXzDOj+09SNpAPoPvTHP
 36oYPahyQJwMa7gHBer95LHPxNr8EA==
X-Proofpoint-GUID: k2eE_KWRN_dLWfP72bSimNcY4cVmei5W
X-Authority-Analysis: v=2.4 cv=QeRrf8bv c=1 sm=1 tr=0 ts=69414c1d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=gec2KKgFD0QOCAiZvjgA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: k2eE_KWRN_dLWfP72bSimNcY4cVmei5W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 clxscore=1015 suspectscore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160103

On 12/10/25 2:05 AM, Luca Weiss wrote:
> Add notes for the EEPROMs found on the main rear camera, ultra-wide rear
> camera and front camera. Also add some comments that act as placeholders
> for other nodes that will be added in the future, for the camera sensors
> and some VCM drivers.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

