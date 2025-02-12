Return-Path: <devicetree+bounces-146079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C7978A33394
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 00:42:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3164D188B665
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 23:42:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 174BD25A2C2;
	Wed, 12 Feb 2025 23:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bYnMGUNl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D1924CEF1
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 23:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739403724; cv=none; b=VMSxGhkGYMgQIYnU3FjgumCCxGGpjprVAOgiSJ0AOo04E/xprZbSl7WdfgTf3zsLR8bQGCYgTm8jqvdWaOO4/whhhTtmugPHr7e4we/eCz69teD1Bp0oHfoWULgUSZWM0kcQJ0OoGp2x86P4St9KqpFrMFQ33FSA3FaqFcsbBMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739403724; c=relaxed/simple;
	bh=Kho4WTps7E4ZBUOSBpsHZXmjVWIcVvca1MZdlNB5wpQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UEOJ+/XGaEt83zX2reSzv8EhuAMpoyg1sgAZ90jAhSL1DoCCsuvYj1JGmb7AccwFZlyKhtS+kTHtgaOzqoEIA4h7hxTNRejjQz91ZfJflHS4YQMnvHT3QnsyWvILof1YdqVURN087IgMjitfcpJv+j9KB7KOqt1SYF6igjeIRto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bYnMGUNl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51CNfSf3030235
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 23:42:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KSm1Wh4boltPJscGteudVGzud4m6a9zHZcX6TdAxYAk=; b=bYnMGUNlpjFydcu+
	hSacCR2pty43ivLXkV+zJn8PIspcR0a1msqiNfwdkFffTmjqlxnVBOGLefV7DhQH
	dq5WmRCyebm7ZGE0/74t/AeRwZYy7MHQPRwEvqnooV/KW9IG6FRa+3D2OHpoteMg
	evg36haJt9JVFCLQDHHMG8e52stqvWgcVjgSv8y5gWAP8pempl0x5Xs6CqGg4Zf+
	YwZDN4s3zMoD/Pb3+xRn0WmTPub2MFoRS5DqXwb5qSGiB+n6XrysBTH8S4s12PIC
	1vJbt2kcC9c2w00lAOyZNZb6b4cnDlkjW4j8Wp35vslvqrl6Ejq9VZFwd6qKR3fv
	LNvyNQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qxg9pe3v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 23:42:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-471b9ad3f10so558731cf.0
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 15:42:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739403720; x=1740008520;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KSm1Wh4boltPJscGteudVGzud4m6a9zHZcX6TdAxYAk=;
        b=pULxfUquI8Ut81s2GiXNFOh2DtNm3livRrdWt/lvECg5GDhoUuk4Qcl6ft375JznPG
         sZPOTm/e4kVG8YgrgjMTBDjGdOtUE9Gb7I2NwKz9fKcCq/zBQWAZgOSz3X/d/eXyp3Dr
         GeTRMi+e2uZ03a/isf+JLL+lEUJDiZfcwhlEHsxy2lF8b3nnkxZT1qw5CWhyU6vNe0FK
         odcF0zwN0OCzcKAK5mkvkI/DTHc6qfeEMrjafflM8Dy1HKnkG6KLdD2RhA8XhjcsBWYF
         0G975c7OtASz1bRr7JytmF6U4s1UoFBXiVRJiKEykYup3gHZZGux4TOX/ro/+LH6S5yE
         j3+w==
X-Forwarded-Encrypted: i=1; AJvYcCW6QgjC4WvHHYCXLF7rPCjHGhqLCxXRYYVGqNxnz+1B7Ft1EtnC55zNjxQ+I4tQWe7BXqWfD+NFyezb@vger.kernel.org
X-Gm-Message-State: AOJu0YxjfXv0UPyR8PkeqroNY5w14YuZauFk8KCqhH+WUJHje6gtITl4
	W5sPJt+9wSF82UHSDmT+4dYGXtDWKxI8bPUxHI0SoZBCWZ9Icdcz18gbSefJx3c5/++lCV7GVS7
	maDPpt05CxuvOrO66PYzGIEuoBmzfp1bt97mcaVLYjZqw6+HOYylKQQsHUlHp
X-Gm-Gg: ASbGncszVQk+oRMZrnkdTdSwHU9yzfujqC2eNkRVXEfHPDpMSOYR7ACoKGf4dvlM29o
	CRV/jAHqxuOInVYlywL+kuHUf1G2lnMyexmeAMQBPJ0r3c9JKc5AHbEvlBkyqNNxMe2I9+b93hQ
	7uK1TwcVplAuLUwxpCtpzwEYo0XSECm3bGvfhYdPF4EFcGA+1MdyiBAHFRq9t1xuqrHal7aHoV1
	9IF4Cx3AQwe0b/z/8lsV+o7pZnhmuRQRlaC+Jdn7KosUffJEo9g04hb18s/qXxZ9ahy7XVT4HAW
	RPMCAN3P/l+ztmenHRLgUTGpvW+V/1bxvxv7w/EvY4w8hRm58wIWkXc5jHc=
X-Received: by 2002:ad4:452a:0:b0:6e6:5d69:ec2f with SMTP id 6a1803df08f44-6e65d69ecbdmr1695526d6.8.1739403720100;
        Wed, 12 Feb 2025 15:42:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCEcBxmtmcHlTzFNoW46Xr2T8lcEbl+S4lmcASGxCetdh2aIQm3gF77JovXY1V0uJjnJAe8w==
X-Received: by 2002:ad4:452a:0:b0:6e6:5d69:ec2f with SMTP id 6a1803df08f44-6e65d69ecbdmr1695246d6.8.1739403719675;
        Wed, 12 Feb 2025 15:41:59 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba53376769sm13987766b.96.2025.02.12.15.41.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 15:41:59 -0800 (PST)
Message-ID: <9c188b0a-5137-4f8d-b8c7-2eb31c5b8424@oss.qualcomm.com>
Date: Thu, 13 Feb 2025 00:41:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: qcs8300: Add support for stream 1
 clk for DP MST
To: Yongxing Mou <quic_yongmou@quicinc.com>, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250212-mst_qcs8300-v1-0-38a8aa08394b@quicinc.com>
 <20250212-mst_qcs8300-v1-4-38a8aa08394b@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250212-mst_qcs8300-v1-4-38a8aa08394b@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: VDZxl9d2j1aX7J7y9Egpz8iy02evLZdt
X-Proofpoint-GUID: VDZxl9d2j1aX7J7y9Egpz8iy02evLZdt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-12_07,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 adultscore=0
 mlxscore=0 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 mlxlogscore=712 lowpriorityscore=0 phishscore=0 clxscore=1015
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502120166

On 12.02.2025 8:12 AM, Yongxing Mou wrote:
> Add 2 streams MST support for qcs8300. Compatile with qcs8300 dp
> controller driver and populate the stream clock for qcs8300 DP0
> controller in MST mode.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---

Please add all required resources for quad-MST operation

Konrad

