Return-Path: <devicetree+bounces-150609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE38A42DB4
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 21:26:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 191C71744AD
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 20:26:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30AE820D4ED;
	Mon, 24 Feb 2025 20:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L+cEEI41"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 986A7206F3E
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 20:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740428763; cv=none; b=iUTkwFg9TRNQnr6PLh3w1cLqHIR1VBM/w9eOf5+GqgQJzVmsvRxo/Uz6WqxlT5gkvPjk1K8z0GoKTkYVJ/nuwARhQ4WpUDk4MMjk+IICX9o+rZ+JsvFDLzLZX/NLGg9PMUe1QWlyJ+PspFkaQ4Y51pqQSZufJBiOkjg0J1A3XJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740428763; c=relaxed/simple;
	bh=1j/g1K7Ja5vbzknnuLCVHa/8XApl+L1E/ioFi17G0B4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m0xoJmo+F+W8y6nE0pIO+sQJ8+bZOGHl7VYCYstHhVEPIJterqS4F51RtmC7zwDuZlRGO1UmVXfkpDjV5QcDXZcv5PvFA+yyzTYfAmnT73UMa/O3p6tITtVhF0wCJXmxyzThwJSJ7rps+k++7Kl1M8IJ/454x3Y+7YRuI7YO1HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L+cEEI41; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51OKOKPC014339
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 20:26:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	65ZKk2GtEBap0WC6JfQnvOCcYk0q6mp1fm75hAwKexE=; b=L+cEEI41C6nWNjyv
	x3fE+tlVbbb1p6Qn/6V/hxl/wNoyArBMgKbJPPbfVEQq+jgfI8bADBOjsP8DPFVj
	6mdOXo1i26JUOCe3akULpU3cnUlQAGO1VV7OMS3xdfZYRC8WacaOp63oqDhvSk0+
	3EFRGZ86ccJfmJ/1cckB6ats39mRFy1Cs4DKSFqrSLAZCp1eU1kGpPg/wvsiVrmd
	QbN1oZ5xIb2apWMxgMpLNKsmAHU2/QquJ2nRpqd1x4GpaZyeYlRsNtifNlFRloL4
	ADeTOYfGHraIn4T5yy5jtWd97LpB4YVizyIFzfylEBDLtq42XxF3PzpdIMJEGImU
	dozm6g==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 450kqg2n2u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 20:25:59 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e65862f4e0so7144386d6.2
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 12:25:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740428758; x=1741033558;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=65ZKk2GtEBap0WC6JfQnvOCcYk0q6mp1fm75hAwKexE=;
        b=ouQg4aAmL3Ny+XhkN7LQ404x/wxrPhofXzWNdHBWSR3d8h7wqCLD3ZBcNMXKwLXF/a
         vxTn0fVh1cryNY1zz1iMBgtKqJLoqn8zD2hAC+kVQDCDGQj7uwjpANWwtegJ6tKePmu6
         KiAA7Cpcmf5WQ7tv9vPbYZo//d4FmYzs+M2RIOuQbVOyu5vyxhgdyOIadbpY3QFwzkPB
         lxHB01sORtpXbI7OKaK8QfT7FHx5N7fzJ2N/822oW/drpVSvVoAehhiB5iaxok7BfoeG
         zy/96xqQTCd73ZH+wbdydD7GU4aCRa8MlPYuf+M8fhomb1JW7+bjmPXPrUOFMYr1aZXC
         cblg==
X-Forwarded-Encrypted: i=1; AJvYcCWan/P86BK1B7dqhgTLkf+wUCVfv9D3XkUnFD8Xf4lCe67R1p/2RqMcJ6+sEEKSXL1aw9aTiJH9PxKd@vger.kernel.org
X-Gm-Message-State: AOJu0YxEWdaiy0gEtbrO2gQ0sWuD1L43qpbibf0wD+C6zrDR809jI+vB
	ngL/lV0+bwGKYX5UXcHIO1zO5CB2OnFKZcKEJI9djmlbMTpsBZ2Qy1PI33b0FVtQlg0w9EDc13n
	Yj1WwiJEVMcErLik2qRjyMvmDugq42aygPeUW3g/fNWTn8KGBJ38+S6YwQ6XI
X-Gm-Gg: ASbGncsiim3dzD2Dkn6UpRrG3swye11kY0yXumwQadwF+cz66X13agRMJcybpai6zsY
	OXmEGlLhYgLU3zWWObiXEMYUXNLX3ouDvqR3NXdtqLV/rROZMltL0q05z8P1TvOdYkFYiywsMZe
	t3ejuA6LQr0Ig3tBcdBeWSZp0u1Vban3B1uz58Fy3mApvrA5/xsokPOlr280v3gGjvHaIVl3+Dj
	uv7LD/lLYh0K4gqeJ6B71mqhl5lLZJ2UASeDdRf/IRHlk3/JsPW418aXAUGUPQqKfWb+ww+5nG0
	UIPbImJiDPz6lzm9Yna2mOYUS4rdllIrxu2lAp5Teo7qJCwycrO7tZpkp7Qsm48OF9s/bQ==
X-Received: by 2002:ad4:594d:0:b0:6e6:5d69:ec2f with SMTP id 6a1803df08f44-6e6ae9d2e05mr63774576d6.8.1740428758379;
        Mon, 24 Feb 2025 12:25:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFfKUxFcIDY7voAldnprBxDRpcJ8vSl3Q4jTMO+GbQSLIoMZ1VG0lqyLwhpCWUnpAzTaWApvQ==
X-Received: by 2002:ad4:594d:0:b0:6e6:5d69:ec2f with SMTP id 6a1803df08f44-6e6ae9d2e05mr63774336d6.8.1740428757890;
        Mon, 24 Feb 2025 12:25:57 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed1da1c2dsm17830366b.77.2025.02.24.12.25.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 12:25:57 -0800 (PST)
Message-ID: <6fe42573-7e98-47d1-8815-c11d44671395@oss.qualcomm.com>
Date: Mon, 24 Feb 2025 21:25:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sdm632-fairphone-fp3: Enable
 display and GPU
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250222-fp3-display-v1-0-ccd812e16952@lucaweiss.eu>
 <20250222-fp3-display-v1-4-ccd812e16952@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250222-fp3-display-v1-4-ccd812e16952@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Ku3HlxdLZK2fkDvNEYU4TXnOq_BFuM5s
X-Proofpoint-ORIG-GUID: Ku3HlxdLZK2fkDvNEYU4TXnOq_BFuM5s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-24_10,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 bulkscore=0 mlxscore=0 spamscore=0 clxscore=1015 mlxlogscore=976
 adultscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502240129

On 22.02.2025 6:58 PM, Luca Weiss wrote:
> Add the description for the display panel found on this phone.
> Unfortunately the LCDB module on PMI632 isn't yet supported upstream so
> we need to use a dummy regulator-fixed in the meantime.
> 
> And with this done we can also enable the GPU and set the zap shader
> firmware path.
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

