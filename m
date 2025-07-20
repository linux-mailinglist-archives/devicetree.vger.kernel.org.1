Return-Path: <devicetree+bounces-197963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F7DB0B632
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 15:15:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 87BF31893192
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 13:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50F0D1F4E59;
	Sun, 20 Jul 2025 13:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IMaWHWnB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E667B1EFF8E
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 13:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753017314; cv=none; b=pRiMd0RhUDPlNAOBbu+OHzZmkBHcrqjFVeMpdNaJJfRta+cXsL4+X7Iayfv52/FNSC3M8y5t4jfxMuN9KqZld6LU2GCH6CHrZWoxoiD9hb0pyIh9fRUGLDJ/xW4+mFwKa1EtVY6IXB2zsphwjYs/duZe+dIbzRdqFXLc0+bepz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753017314; c=relaxed/simple;
	bh=a+/9yQt11K3VithUaPvA5gO2rBEnkjNtJ7gkK8eJqIo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tyRq5Xr9GZ+r4MMdoAR32fKRZO6FyHarVCF9p9zMEHSV0b+uuqDgkPMVIQRaN9ro+b0mnYpsq4BBqHy9a0FWaKp5Ry09NNxyXqpXA5rGWu40GsMtByv1Hwpl87SlvqwybuvFYl8TZNviEcgutlPdlzWFyL/sh79YQw5544mCF2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IMaWHWnB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56K2daLJ032403
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 13:15:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a+/9yQt11K3VithUaPvA5gO2rBEnkjNtJ7gkK8eJqIo=; b=IMaWHWnBCHMw9zSG
	jGCyqjPx0M+qhwMzCf1ACrW7t6ln3YmGSNhkpnA5aI6KPJK6QNpRU7ksWq+nabna
	cT1vUXXHhFqjyIEpyAfLruMADmFlAMjPE20xVIxuEQdlV+Y+EYBLnhxtvjJZksph
	0qhN+Zqq71W+nu8RXhRourKtYckgH29VsHnoFRFWPONKF7X9smcuQrIeppj+kS+G
	DTiKpMcRtoKGscoCYXxW+SlCfux9k1SNAt49kpMasOByQMju2Y4VGXBdt+LT905K
	avsuFDNLry6Evac5qIgK9svtcwHZvKtWS1f9vMsY/38LZQhN0de8bZ+ndP3GSwgj
	1fgvMg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48044fa97r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 13:15:12 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-311e98ee3fcso4922281a91.0
        for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 06:15:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753017311; x=1753622111;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a+/9yQt11K3VithUaPvA5gO2rBEnkjNtJ7gkK8eJqIo=;
        b=cZ4hJz4TlCXrLIJCPBUFzK7avw94H6Oux0RhS3Ss4j6a8FBXwVPaYD3xvW4pXK6TFF
         8HIAbSx2xdXwDoDClj08BnTK4KV24tC2pBB/9jPtS2hfqsm4fsu7KR3Gqo/LVeXZ8n0p
         TzvNmFnS7gljl4zzVDiAoROjjq0lxyhkV2PMh7FiGDTuK3JkspUQtjCyoB4QNgMoVxDK
         nJIUcRf1YTjIqrCrEkzhJrqHNDq9WUZKxutAbmLMExxUrqLiA//apWw3zHgCVV0GwGKC
         80hBYHzo7889Pf/NpbCutIWlMNSp6E2TsotVLkMrn+BXBg+ysXH+BfPDmvl4DfmHRSyq
         h0Rg==
X-Forwarded-Encrypted: i=1; AJvYcCXvwXTbklnGw+jGbAjBsmxT6ZmZFAGTHkW4wRVrKRRbFNOSG+Ccul+lIQBpOCACEWyow7hFu6eVMQqM@vger.kernel.org
X-Gm-Message-State: AOJu0YyUDQwI6qLZ572VuTInRKPtz86cV8pYVFp8Zf1gvcf8warZtrNq
	nt5m4jxaVrFd80t2vkMB8dI+5zKAdvmYtdsy4K+UZce6oiLUhmC+WFFL9w/ocFJVYrpc37E3Ny4
	/hLEgwwYknyVHXZ+SrNqTtQSfBNpZvHxQwEFsiWm11JXfeNtQb3EYJCmErzxP5Wzj
X-Gm-Gg: ASbGncv+3J09wxLK/a/qokOGKyf4/yu71BaOGxTMw8OlcmHORJV9tVUeTKmjgFY96ZS
	Sd5ZDYkM/TPUkNEl0VhR3zCkKeQWFA+gj0/nclarJuSlEAugtuuWOHvjzbU7hagPx3XhRiy5tA0
	ZTohDqwt2rt/IcnI064NAVboKjTCyxbcfTADBADssjXT1QQG2uqdMZZLuDyT+TBNJU5OpwuC2eh
	4dJZ5VAsB+wfCALb0ljG1hh6+BNQmYX3L0Oiu+oh7to7c4cK3uCcFIo8zA3/OdJwTFp5yvMIgrF
	W1xNZnOnCzBz0Jkg593l+L9Ys2eK03lIWYb4lL097mQFsltrEvVs8bncUVWePqTWWMP/iOqbyCa
	s6fepmA==
X-Received: by 2002:a17:90b:3f84:b0:2ff:4a8d:74f9 with SMTP id 98e67ed59e1d1-31caeb94318mr19574378a91.10.1753017311164;
        Sun, 20 Jul 2025 06:15:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAUVIdg3VfO/chezPNcdAQfGrPXF/HeTMrNxiX6naKgNf1iAKiYVgWsV5q5SnS7nUk8OkSQQ==
X-Received: by 2002:a17:90b:3f84:b0:2ff:4a8d:74f9 with SMTP id 98e67ed59e1d1-31caeb94318mr19574324a91.10.1753017310705;
        Sun, 20 Jul 2025 06:15:10 -0700 (PDT)
Received: from [192.168.0.168] ([49.43.231.217])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc0be8707sm3942525a91.1.2025.07.20.06.15.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jul 2025 06:15:10 -0700 (PDT)
Message-ID: <a4369d76-df44-4281-a2a0-cb6d32197302@oss.qualcomm.com>
Date: Sun, 20 Jul 2025 18:45:04 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/3] arm64: dts: qcom: qcs8300: Add EPSS l3
 interconnect provider node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar
 <quic_sibis@quicinc.com>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <mdtipton@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250711102540.143-1-raviteja.laggyshetty@oss.qualcomm.com>
 <20250711102540.143-3-raviteja.laggyshetty@oss.qualcomm.com>
 <b5a1314e-6733-41e3-9258-c3a88b2c90e7@oss.qualcomm.com>
Content-Language: en-US
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
In-Reply-To: <b5a1314e-6733-41e3-9258-c3a88b2c90e7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: FJFJY_1irJ8yLlpFVT97sxnVQG8xczQB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIwMDEyNyBTYWx0ZWRfXz+sy2xY3woYf
 HF1ngCxc1Mwew+fQZHkLMSisChFKSam87ai/IpJ1YvPalAIO56XpNAxeKWYoDx67pn4/aMW0PSK
 LnggJbjifjNgB854h/hn9Dh4nS4VdLfZzzWx1yuUbkyYnIF8I+Iu9eZiyEicNIP9r2JG1UK9QZJ
 WOIOYs0xwlcU+3ykbyrhfTMDisoJBWyadq+vvK7htWYm//n1lmx0HGhNCibf8cM8yLOO0Wt8hMO
 QbRh3O/Rf+IopOyfkG83tzEVdj6K9U7LLEJej7xW+PB+5ETrQfQTncZyhmtKe7ijWcWp3kuSpyW
 jNeehbqZ4SYdVJ1h1ckt0yijKhw9X8RoC0GiBXOMxN59zOqYocKyvQp/UM3hIwos3+JfQOabihD
 bzN3LAi224nIFZ1KZxKUmUBCHfaxVT13bRJsJ717Ra0fALWcMudXFGtDViu/+e7X6lkuX8Yk
X-Proofpoint-GUID: FJFJY_1irJ8yLlpFVT97sxnVQG8xczQB
X-Authority-Analysis: v=2.4 cv=YtcPR5YX c=1 sm=1 tr=0 ts=687cebe0 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=zhpjAwSWsGC/MCksz6s7dw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=69bba5Txv9aQVdJV0a8A:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-20_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 impostorscore=0 mlxlogscore=953 suspectscore=0 clxscore=1015 spamscore=0
 phishscore=0 adultscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507200127


On 7/18/2025 2:36 AM, Konrad Dybcio wrote:
> On 7/11/25 12:25 PM, Raviteja Laggyshetty wrote:
>> Add Epoch Subsystem (EPSS) L3 interconnect provider node for QCS8300 SoC.
>> As QCS8300 and SA8775P SoCs have same EPSS hardware, added SA8775P
>> compatible as fallback for QCS8300 EPSS device node.
>>
>> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>> ---
> Squash patches 2 & 3 together (because otherwise you'll still be hitting
> the issue I described the last time)
> With that (modulo me trusting the numbers you put into the OPP table):
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Konrad
Sure, will merge them as single patch. Thanks!

