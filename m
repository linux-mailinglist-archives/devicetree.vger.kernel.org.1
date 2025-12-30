Return-Path: <devicetree+bounces-250545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D44BECE9E29
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 15:12:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7BD393016CE3
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:12:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68FC226ED3A;
	Tue, 30 Dec 2025 14:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iwJA9dak";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ALHvJH3V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FA324678F
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767103925; cv=none; b=e5sqtUvKBV3af5LGsPxwUNuiODyVd51WUfw3fVx99EzaoZus0L/JZKO6U/YHgLIc/rSEeRIdYr2RzDebfcCqBY+rbXsalk8CZ7Ua3G9Ws1U7HR2vYGPVDbfWaabIyG0OUQ7c/ZX+D/EpeUETEZupXn+VStxoxN41M57OLaLT3E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767103925; c=relaxed/simple;
	bh=ipuL6M8Uy33Xhv1jXr5EX+fil6uqtSvN0xbOhuIFcyc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F5RNYFqKukCDWXUJSN4OM74eDi5dXcGc7BmBlXWhCHTRIbKuNdgGRQmLNb856Rrjpdr2WcogpUaFJTA3ia1AdimSA8xAdygbjW1Warqypp9oN+utX7Wqkrd92mRXp/BfkmW+BglsPnxXXOew+aSZdEc1srT6nKnTQYviCkSZUmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iwJA9dak; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ALHvJH3V; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUCu1XL715509
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:12:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HS3TEANSKSMWymmtWV5vqUIqqjugX/Y6BQA4UQUE6pE=; b=iwJA9dak67b781Lk
	4NaV0iAKDY+b2kL3XbgtYcdlKRT3B4v+pRkqBkQTUKsgZOt95/zcOqhoEDz/njHH
	N5CerzgtUhfXLSJVhCGpW1RbRiNIWrA8eaCtipOTM0cilxL3A7CHwyOj1GAcvK31
	Q2PHcpr+KAT2vMBV/rog3g7uBxc1JXQmFOdYviBkBNEMa812aGPB3eT0+4WF+GzA
	BVYzARc82+zrOCTkD72ta+gdviEB5xGywJxwWMDwhcKr1qRWk0cJA1j2BNYCVExD
	8Y3Bgk/4Fq24XKd+E/2k4dpzDTq7lIUEgvZVJ18x6jmHtt/lgjIOluqADMrA+cQI
	qlaeXQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcf5yr604-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:12:01 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f1aba09639so29948551cf.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 06:12:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767103921; x=1767708721; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HS3TEANSKSMWymmtWV5vqUIqqjugX/Y6BQA4UQUE6pE=;
        b=ALHvJH3V+tHfiRoZKoWMPylMwK32uwquhRSi8hk9iso+n2aeZz4Jeenw+bGClf1l4Q
         tkpzcDM7ZJbE4c26dDgJvqGBGnsAe8m8uPl0RkncslQudCowgNobIw/zSu95tGHdSKiy
         cuYeIK4r6Mq/y1yItYo/zVQezXtXsJYS55JuV7O2GouyEaInd6+NvEWWAzcYFvlW5GJ+
         KHNrunCsI9HLaBV+bX0eoPNBPgWOHkInDaRD3LSVqB39wzuArPGpgMgkoggLH0GyB60k
         T8ugmZ7BmlnjXZE9HKmM4+RxI+2Tj55kDi7PCdwRHWO1uZxcDmHVpUoJ5xPs9qzmAGwj
         HpDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767103921; x=1767708721;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HS3TEANSKSMWymmtWV5vqUIqqjugX/Y6BQA4UQUE6pE=;
        b=V3v90qW2ZiKIBdEjg/ttkKA/ogT3z+ES4m2zc4g8VJkiWjaF+YO1lZWZkiwcG8WKKW
         swrzdmfdc7VTjo8E0b7cjpaJ+qGbqq8e5JAsi2II42BNhwDFmLAXON0unfRXH246dqAp
         Ytn1ociQY7WYrBm693mYE4XB0/t2TQ4Z9LuSZNsd2QZrB5yxBxtXMsbvyiLSieu4mOSj
         ViMT9vxdI7y6NqN1i16iBgj5knGy9c/bfy/PMM9mr33ehu8pijILQAaVdH3RxNTlY/di
         1VXBMp4DdEbSU9rvvS9fd+4/Ccmr4D1QWetIMgI5Uap96iXcvr8cM9JJ7KlUSTVUvZOu
         7cIg==
X-Forwarded-Encrypted: i=1; AJvYcCXFLrLvbRbFi63JZGET43LM36RnsFK1YgM4ho/PaodKuoR5qGF6meD3LDlB46WPfkpZj1842hzTUoTe@vger.kernel.org
X-Gm-Message-State: AOJu0YzJCSINLAdyU/XS3TIwfPwzlSEirQXvj32xPy8CnM2qFZAxMk3+
	hVhT0xE3MCFFcuatM4nKhicw7ATcc+Y8yPIRWkOuJ30I0PbqZ6T43IJgHegIGirWnKg4IBN2FRW
	fNR+yprlsP1Zus9SxAGeEwJV/maCT0CqUrixr4pcchP2xjABJSpwsuei/bpq3R698
X-Gm-Gg: AY/fxX70ysMz7FoG/FUys66EQO2EXnOvMAyX50zm504ZkrAFko5CZDUWBYLHGYlGGcr
	ZHp9Q0K+Kb5dWhQQXC2nZjBdjWFUdWzxcOsO4Fvu/QVBYC2Mb5OV2f0FPd5TOiESA27hKOiP+yR
	AgHAWf4GkERZY0+ceCfyGLfSCDjFaz24gLMnYdqW42Sud8ik/X19cpMZ3VmVxopF/dkX11lobjc
	fQIlx0DQEy08SJMuiw272TC57uVmJijKLzg+nuLBofYfX2MSM92uH3h58pkobaHs4p2WtY61ojB
	ELuXJfqY4b5O6dMHgSOS6qlE4dXeRHaB1JZyMRDC6aewAP6QqHAPiERs+PdNXxa4L5DhCr5tyyn
	k1yTMWRatOSRzlXODxY1p1pIHRM9Fs28kHirCb4HaSu3qWghbCpHKndtkIvpR5KqykQ==
X-Received: by 2002:ac8:5748:0:b0:4e8:a001:226d with SMTP id d75a77b69052e-4f4abda5f11mr392930481cf.7.1767103920936;
        Tue, 30 Dec 2025 06:12:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFjQZFxa4VrpeId28bY9g+GLwW9YjHI5WOe3r+GpOiw5AGB2EQDoUopk5HC/dXCkr4ncHO0Ew==
X-Received: by 2002:ac8:5748:0:b0:4e8:a001:226d with SMTP id d75a77b69052e-4f4abda5f11mr392929851cf.7.1767103920380;
        Tue, 30 Dec 2025 06:12:00 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b830b5fe8cfsm2133862566b.59.2025.12.30.06.11.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 06:11:59 -0800 (PST)
Message-ID: <b486af10-bc66-441b-ac3f-ec150caf49ca@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 15:11:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/4] arm64: dts: qcom: lemans-evk: Enable Adreno 663
 GPU
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251230-a663-gpu-support-v9-0-186722e25387@oss.qualcomm.com>
 <20251230-a663-gpu-support-v9-3-186722e25387@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251230-a663-gpu-support-v9-3-186722e25387@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDEyOCBTYWx0ZWRfX79dj9V/tG1O5
 25MuUsDXXTvqTIklsCR5Hws7tboSIr3v/wR98nhkd0M3NIMG+nzmvFeCezEHBvYuGMKR6gYIvR3
 7XsylSpeqWWCUrILpTI9YVLW73Nd3Drxdadic/KGwC6zWs5CHnQzSg5i8vUWBYFKSTCv/tqIVIK
 5J2alGfeTm3egrJvBrL9/ySaILJuwIDcccgZkoRWpwSSCwFpS9oaXuv4E9Mvr9Fb0hrUWfmRPX4
 DjiWFWUBejJ+Ia9P4JMCoZvY6h88M82Dch46lctmGPDmwWLz2BpPoRNuJcqSwStD4CalMvPdf2Y
 J6HDnNLS4HfjgpPXGvat/fqHGVV8pPSj7JO36gCjx1iNiGpn54tJSp5N85nKShzJaMekCaayeD1
 PxxXia31sU7Y5UUMfHGbtdcJBadn1MhFNW36YzDXgRdLlg6xtX9Yp9+4mpU6bd2hHHBwI9WCUoN
 lduiO82ZXWKCUrBeH3A==
X-Proofpoint-ORIG-GUID: 70PKqjaWQC6sguv1nrfcBE-iUtaWyA0d
X-Authority-Analysis: v=2.4 cv=KvNAGGWN c=1 sm=1 tr=0 ts=6953ddb1 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=3cl7Maa516Pf-TGxC9oA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: 70PKqjaWQC6sguv1nrfcBE-iUtaWyA0d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_01,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300128

On 12/30/25 1:33 PM, Akhil P Oommen wrote:
> Enable GPU for lemans-evk platform and provide path for zap
> shader.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

