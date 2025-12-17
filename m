Return-Path: <devicetree+bounces-247360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E91CC750C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:22:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B85AB3062ED3
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 217EA341058;
	Wed, 17 Dec 2025 11:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HrcMJqsM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WZtm35lw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E39433F8C3
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765969985; cv=none; b=IqziTqcmSv9Ai8RAGliI70/X+fvxuLPoyMIMSZZHZIpdCgQXSyjILV3ZlZgGCkyhdrKxhPbmKvy6Xx8VtS/Ck3I+CSi2aa4xtIo+xBEiRGtp9XEa+NU36gC0LTHc2kVOjQpfyGiL9bi+75/miy1Y2/EZ9UKGa97M+v2JtUzus3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765969985; c=relaxed/simple;
	bh=jBOMNeoZSGFfnDvdceHpj90yKVBrUkvgfUO9dxv1qn8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LQpkGfhAOS5xNOpGMHl5vjm/SC4aV1DbbA9T5PvJk3BvVuD8M78jf7JAvdGgrzbtwSkY2KPIdHO+AAPkJbiUy372Ob9OjSUMG36/m498nluQgHP+jmY5qLRZtICBDX47v9sBgSfowfQ6Fqq5kTMwC7RLo6BmtosHLX3hym/WFt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HrcMJqsM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WZtm35lw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHAKcHl1591370
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:13:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8s7nifhnhw8fss9dv1I/1lokXsEB5LjDf/QVe/Sm2fw=; b=HrcMJqsMrwrO9KL1
	YBJgJBQWnXdifnAdSKhpQVp1GKtb1CoyIhK2+gMsDXz7EWV+KtoaRgWjF9ZSvcev
	TVBOHwxn/FV3SqEV2pFNuJE1sZLFSOZs7I6NDZENxL0WE0M9TjUQXXrpDA1hI2ma
	7axN9i2Z1/0KIUj9DHQcoMyGfM66fwA27Cx12ML3zggHCljoDdc/rRJ87QTGPswX
	udDqWuxbIBHfbv8mLsIoa1r5Rt1akb1B+7964LkY9AUnCOA/Ej43X/mF0KYBIJAe
	r1hDK7ka+QyweH3liPTBuyv692pDdDDRZ0Y+WpuUkRUKAopIeMGSHunX9vqLYC7a
	8wsJxQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3fefj5uk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:13:02 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88882c9b4d0so22496506d6.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 03:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765969982; x=1766574782; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8s7nifhnhw8fss9dv1I/1lokXsEB5LjDf/QVe/Sm2fw=;
        b=WZtm35lwN0NXEGfcV3F6Nes4jgrNHuBqjH/rXBqLt/jbYSwFwK11Js10QVdbdnJwy1
         pMtgmXFxj2wYvMUAfi1/CCt2GdS/6UAizhshhBtuSwVIP2gacVqNcIPzCMIukGowK+sd
         8MtQIjP+DMnvHxg7jHmc8wYP/CQhfbZo3Essz/u+4rrUD7e2gMx+Lu8E52WPm36x15QU
         24Z6L7Cm7ZC7nwh55ICFF2RGPLzQw3LJ7Ldd+/GsHpqmuOG4gdNiNW9oClQt3EKko2i5
         rs0W0rnWEudDUpZRAcv1qaXmzd8OHtzxTWYVn1B6EOIofI7nMlrc20NASbECxlVQw21m
         eEbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765969982; x=1766574782;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8s7nifhnhw8fss9dv1I/1lokXsEB5LjDf/QVe/Sm2fw=;
        b=PSqiNWuUtdzwSjk/NOXxlY2dNzOCA5XyNhJYnA9TrkFWnE7Bz0ZXTApEvN9s8u8OcE
         bCqriWx5AE1+jG+9pnHNc0wnam7CGM5TRgwqUdee24Db/uQAaP2RFoc28+4Vr8hBD65N
         cn6w1XKn3mNTju3rT06VEemmFCLAY9AGbKEudh0yEDYoQPzGDnitHlZR4ANgcx1MRyyd
         1VUIJs6h/R1khVImaz0/oeNxoBlQ6fm0CINKHthxy7apo+t9AsojZ3V8cKRIcyjfqJN9
         4vywQZwSu4Nom0YBHeRW3lQHK05Vs73aHYnbCx6O7SoC1BcfxWNBTSoIb7ljnCXnJ14H
         GuBw==
X-Forwarded-Encrypted: i=1; AJvYcCVioJqgLrNvBlvGnIt2zaqsBWL5y83dWKK9HfKWkxuDBXGWcnPpHp3ai7WpO5E4yExdtvf+SgS9y0ge@vger.kernel.org
X-Gm-Message-State: AOJu0YwO1DCZd2lEj2oN8wgEJTXzoVOD1ZhgpGEumD46Wq63hzw94103
	c61Nm07DbmFIWCsxF137tGNnxaZ+VzseTaj++mCNU0kEVtITl+r7+p8+MmYuZlg6yVdw3VTYX4W
	N+hctMb38VDCeTNy0GSmEK2IyK5ODOSaxYoM/K4NoHvnbowFz/v1o36w8n1Nf0X5z
X-Gm-Gg: AY/fxX4c8u1s2KXSIMdOXCvoxkSrfmsp2Lh1QPARHKU9rxHQ9LA11ywSD7UN6+hkcYY
	NSs2EwZK6SCfVzyrWNSteMBgH0yhO+636/JnLPm2iOAS+bPXpxZ+6KIMhWDd8TJAd58mTddDGGD
	byEeF5+FTKTAemvhXU1hWGb3Za4RWNTA0izmwXCerw29S6y1IsTwdnPloknu31SX+SmFlYcXb/R
	QxHxYr15HANHJ77rvf9rWdHHYN9vX56mIhCgFyeGU0gI3J3MWwlyTWbN0Zw66UpR8aZu4NS901s
	+fYlI56qFDV+ImADgMx2U+Wer29x8teqze6TfJEIasbPnO5MmxYGDSaJ5qz5IEo0MT8NgGR14sb
	kbvypezciGZO0dqQtEwgI2wI2ZLYINnap+KlXbHO3kzQC+Oxs0H7mb9UkITqUiho6PQ==
X-Received: by 2002:a05:622a:44f:b0:4f1:b3c1:20f8 with SMTP id d75a77b69052e-4f1d0586436mr189091041cf.4.1765969981889;
        Wed, 17 Dec 2025 03:13:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHde3INckVEyAtJpPA4moTPTi1MTG9MaZWu64iJa9nrCbGOgdnmQ7Q8sGmBSfSB/n8j8rYYUg==
X-Received: by 2002:a05:622a:44f:b0:4f1:b3c1:20f8 with SMTP id d75a77b69052e-4f1d0586436mr189090811cf.4.1765969981412;
        Wed, 17 Dec 2025 03:13:01 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b44620bb8sm1151802a12.14.2025.12.17.03.12.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 03:13:00 -0800 (PST)
Message-ID: <417d7e80-e098-4993-85ae-59ebfe50934e@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 12:12:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 3/5] arm64: dts: qcom: monaco: Add camera MCLK pinctrl
To: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
        catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251216062223.2474216-1-quic_nihalkum@quicinc.com>
 <20251216062223.2474216-4-quic_nihalkum@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251216062223.2474216-4-quic_nihalkum@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA4OSBTYWx0ZWRfXx8xeiKDuDynv
 1NEkrub0PmWlwrfTDT4au+Zx2Ak8cmosrBebfk28XC3DX2mmTWDefVvZW7mSCqLLqaFhjZd/g0n
 gooV0gEuLQIcE7ur1UYbDxtYUoBcX/jVWK+Qx4wiOoAMtShs3JONpFjYciy8Wj53cgNfdMl/rrg
 nLz+BO9hvGrLcbwpq5DtiN/5PI1vdkjmwAH1wBLJozWIF/B6iT/AvC07TT/5FB5B/tSr6g44Fxq
 mSE77QfodALIqrb5jXU0UQoctErbjFQ09Ca3h1Oqo6lJb2dZpivRrMMI3fhHsLj/aUPMcSjyIqo
 HuMKc3GEBB4K2ktk1sB1a55fduT7HDFRYBezl4VrrRwKLmALT5OxL0xOjiPtKGyUuHXXoLqVkoE
 H1mVZnz8m6fFbICaUI2ECOIT3bWOKQ==
X-Proofpoint-ORIG-GUID: 8JvHOWOLA3z6XeJAQADE9HI0vLn3I8Fk
X-Proofpoint-GUID: 8JvHOWOLA3z6XeJAQADE9HI0vLn3I8Fk
X-Authority-Analysis: v=2.4 cv=R48O2NRX c=1 sm=1 tr=0 ts=6942903e cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=VLFlip5mi2fxP60pxFoA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170089

On 12/16/25 7:22 AM, Nihal Kumar Gupta wrote:
> Define pinctrl definitions to enable camera master clocks on Monaco.
> 
> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

