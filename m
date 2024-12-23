Return-Path: <devicetree+bounces-133544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9309FAE12
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 13:00:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE5C47A175E
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E3D9199956;
	Mon, 23 Dec 2024 12:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pzND3xLs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6335190471
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734955232; cv=none; b=X5cs6no9forrnM3CiSj+lLWMaJSo6S+fxwR8fBl7WadprgQUkZefN05qDgstbu1fBv3iFBOMoeUckQqNlRYP598XPAi9aRqIm0iQweFPk7t+1EM3KUTvGAZPqSZzk4jDlfjR5L0U3HOAzA0mJs6dC73aHwvQITYQjwZho8kwJEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734955232; c=relaxed/simple;
	bh=QV0VId4XPnG7jXmecEC7q4/L14x/wV2XNPe87e8Gr7c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WZQ+TA4hUbd9m0HfH2csVZgRehBPKoVnXJINlJpUQkpIDQx8S41cEpgm+AX9ScMpa9XvAveMUoS/oNFkIaki0e16qDhfGSTv5cH+OV7wIepg0aE/OrbUN3QMv/BbKIwCCVsbgf0D6Tp00kkbEHe4U6pW39hjsmRNKAaflKLbbDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pzND3xLs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BNBhlG4026519
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:00:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QV0VId4XPnG7jXmecEC7q4/L14x/wV2XNPe87e8Gr7c=; b=pzND3xLs1mZbBQfL
	LFyQ0K5LxvUjhVkWgE0R2lvPpY+y2XbReqJcUcZ1qNSrkyqLfnu3g7uPzF1s46sI
	N9N+eFbR/xLK6kHCZnIN3loij25D8AKH+9W4gNhIdiWZR7MZ1ONbpS//yNq8F+Nn
	O49TiQZz69mEev4aJ4WL0uPxWOFMviQ/1D8aioF27Q8WIDDJWLiFzuft92DCPqSD
	MXDrJlYJ6yfzDrmKejUUkjSpKhDL83UO4eMJ+Um+P6VrA68XCwNOGaZ4Fm+SUvJN
	3VgBoID+wC2XZt6L6R2nRMI9hEiIWcIZPK+ylQ4hyBu80mBVSi6L5V+hTKXSH0eT
	IIkCJQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43q77rg0xp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:00:29 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d8f77bf546so14405516d6.0
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 04:00:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734955229; x=1735560029;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QV0VId4XPnG7jXmecEC7q4/L14x/wV2XNPe87e8Gr7c=;
        b=KONyS2QVpKM9sxMQIs8r3p4iQsxbpsvfbs7BiUBd8Ml8WWBCKB4+eKalr5YIIFRydE
         j4QgfDnnhuaaoDz/wFTHw/lKV6Fn6xmAxTku+kVUEaQzv5cLHhDSfHJWxMVSBvSjtpWh
         gJgMF5xdQ+O6EjYcSmBcgu9k5ptGqyKOgbUjlPzl9gaR2/9aPzu/gXV8TOMUS+3Nj10c
         MvH5e7xkjOCdei0iHtLW6Vef1+JHRD1ylm4GZYnkGX9nQfZkGQ2Zb2ZJHIyqxT5tdqnP
         kTQwVDkU6CBdP6s5tECmYZmMUPTP+3Xo9l/GOwddOLWmUrO7Q2oX//cnhtXlfJg7QF/F
         Frcw==
X-Forwarded-Encrypted: i=1; AJvYcCWxNqZUWTth8jwLQcbJtMekyfexPRMIQml2vuOvteRlEn5cz26GU5wewzmSGCOaQMqx8c887G5Zy5U8@vger.kernel.org
X-Gm-Message-State: AOJu0YzQh4VRSrDSzSPsaftVJv2x0MWGoy5B9zAL2IsiGvaHRwB0wF7O
	2qMosmA/tlRGAEVFCXWdxx1Q0QHzNm6xIw6OpNKLNRcHUoy5F0USK2gEcZYUYw9iC/+JYccAQF7
	Kt+GDs6b3gYgsh1n70hQ0L8fQlHyGMSYXExeKiyofHstULm3+PFQnyDarCYZF
X-Gm-Gg: ASbGncsxAWMsZ8HfESxOtoCHuW/PW/GrXIKc8A/8WrAeA8DkpDArerrnoefyopDreaP
	VvcqN9IvA/bnQ99CM21htcUPrNtaJxcU0MVYufxvDNUeSmgaJzCreM4V+rBRrqeJI802T2NOgew
	r9Y5p5aJAXRInmC1OIZzxa3YAB0XXRRdnLPcyn1tYI/rQul94e4BUDDyxJUUfrxDKYH96FOoK1y
	W32bZS1BljQw9ESX45nT2qX2c6iW5AorUGtIJpCLhdnAMlwJwxmN1hbu9Nz0kl3ZvpPMIkHwG7x
	YbiUh1bQwb5hqTwQExCSa08okLA3j2G4tdc=
X-Received: by 2002:a05:6214:5f06:b0:6d8:a90b:1563 with SMTP id 6a1803df08f44-6dd2332ecfemr68471066d6.5.1734955228953;
        Mon, 23 Dec 2024 04:00:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE07MyBvqIKUXBpiZsouFYlc+nl1/rZ97d+byZH8jLrT56I5P2mnvuDGR3tDVnKH0tgCJCmCA==
X-Received: by 2002:a05:6214:5f06:b0:6d8:a90b:1563 with SMTP id 6a1803df08f44-6dd2332ecfemr68470616d6.5.1734955228521;
        Mon, 23 Dec 2024 04:00:28 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80665253dsm4826443a12.0.2024.12.23.04.00.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2024 04:00:27 -0800 (PST)
Message-ID: <e5dd4552-224f-45f7-b5f1-a6a5c695a268@oss.qualcomm.com>
Date: Mon, 23 Dec 2024 13:00:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 5/5] arm64: dts: qcom: Add CTCU and ETR nodes for
 SA8775p
To: Jie Gan <quic_jiegan@quicinc.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Jinlong Mao <quic_jinlmao@quicinc.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Tingwei Zhang <quic_tingweiz@quicinc.com>,
        linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
References: <20241210031545.3468561-1-quic_jiegan@quicinc.com>
 <20241210031545.3468561-6-quic_jiegan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241210031545.3468561-6-quic_jiegan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: e-DXjMHn45btTrCT1-NkZhlBxqp_QQ2a
X-Proofpoint-ORIG-GUID: e-DXjMHn45btTrCT1-NkZhlBxqp_QQ2a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 spamscore=0
 bulkscore=0 impostorscore=0 mlxscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 lowpriorityscore=0 mlxlogscore=687 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412230107

On 10.12.2024 4:15 AM, Jie Gan wrote:
> Add CTCU and ETR nodes in DT to enable related functions.

subject:
arm64: dts: qcom: sa8775p: Add CTCU and ETR nodes

with that fixed:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

