Return-Path: <devicetree+bounces-133115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7209F9426
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:21:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 173FE18878C3
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:22:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD742215776;
	Fri, 20 Dec 2024 14:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iaWSZsD8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72EC9CA4E
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734704513; cv=none; b=pYKa6mwkdrx67UsEfuPWasiFru+PcbUQrFANikgIBhB9YLoelUOj6oIyvUuCq5vHwNIS1creXJGOQMKVx4rZUrR3CrweNarU8+k3Bsuk6xTFqwTMnXiKQ0BLJzjiPeALLUYxV03jy0gOP4Qz+lESZOPnrdnUa887Ee7JQhnPfpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734704513; c=relaxed/simple;
	bh=8AakwH4rqZlU+awr+cwOGReVlcD/QCsqlL3Xg8IoU64=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qYeFFeMa/tzbCqOwZvl2ITce4cC5U7rxN7beQN0NcmF1ETdVhFgM0IxiZHe/FtfKAAAwfQPIMYJOSIU14yUhbPAWlrloUZEgMaraSSDOa+Pk8hzeQlYnmOvXYKBxJAAnwJ2Pypwigl481nDK+SNbTWNI3Y9CvSh8YQxIINFnpYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iaWSZsD8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BKAKVG3002745
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:21:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vu6zYvRhveH1aQ5tqrWnMeH/DKiFK4P29CLhabZGtgI=; b=iaWSZsD8KoOMnYJD
	5+5lpE1Z8adJZdTnNKXpjNePmUBnh/uUCQo+UdwASToOluAKa72T4mE4ZP+HKdYo
	w7NiWxSSmQx+y6xpW6ubVsTiZmiOONplLruAeeDdeF5H9yaYYluS03AdNa6NOkm1
	wKvLxRbsqt/ymSsItjfIQOhoE0YFD+Jay3PHqB6T1SxEET54bDY3Regt1WdvHvfa
	RPv4wJfUmMxwnVXfKZgnOlZac8VMnTx52d9o01liFKY+diFUKirfWy4WYpG891kB
	AnN4hD/qzaTkC65qC3vHsPPfppeJmvbKKPqHtUtFnVz3YepDUr7ltOv2sU1moMnu
	xo4kKg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n6ra8jdk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:21:51 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467975f1b53so4862361cf.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 06:21:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734704510; x=1735309310;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vu6zYvRhveH1aQ5tqrWnMeH/DKiFK4P29CLhabZGtgI=;
        b=HHXccck9i7BTHg7ji99+Ttg+b1d5+++y0/SRYArNCWKa/D8hjViBCpbmz8Gr5WUd9W
         As3/AJDIOto0qgFrukmq0Qffuqqy7Lv+AaG+blRdxHMu9VuWmF9JRfxnEvYB5xiSNbQA
         WdDQlpQqnkvPoTHYHxqN3Z+i8sgzzftgv4GWCKfQ16lTZtX8ooGc5jAAsPSMoFenjJsV
         ZCDM0N7oXBKfVv+o+H3Mrgabz8V1guDpof7B1wSuQGoFH0WwdNFLtKFQftHhCm+91Igm
         PCNwkRoJSWXeFQBgFpNU00V5Do7mrZB/6BM8AfTktcnQVGwDQkS9rsmsKNYx+VrWK96w
         4nig==
X-Forwarded-Encrypted: i=1; AJvYcCV3GvhpjlRV/fRDWsuDJoZ6naI+Ypk9WZMtnmAk3pqlGRnIvVOSn8SrDO3Qb99wgktWQQuDQwTRvytS@vger.kernel.org
X-Gm-Message-State: AOJu0YyJIHyZO3gI1fy2omdw1BBaveggYqep+fFCYLfRCIXq1Kp9DY4R
	9EtFI7UYUI8EyFdfU1wdIcEW9lO8aO3qYf2zqx8GlcQnABBdUjZKYHbUXy5NNQNIUzXSdm3oR24
	AlJD2VN9lOgipXf/1iZc0mhvrTM7M/gJUPF2uwl54ektvZf/5jE9s6D24FcrD
X-Gm-Gg: ASbGnctOQNC/xPTxP2eWZ6/vPwRYASJqOxZKBW6k1TcFbGHkk64K9wVYqi1RxIBCz08
	aYy7JnpWCp3TduUoE5/73UyGwizefJAeEuR/aESyWDNew2p1+qhdxBU4/1fcAHudFQRFJg8W119
	yWyczlMgsmAIOH4ENdYBb4Perwpj1DgM9hQWu5zJVJi+AdUv1ykHPsNSBW4vPOFtuDsFhYdhOL5
	3JhM2fSRjLAQ/YAAceF2SAZ/jPdMixZEXHIYMJO8UeQGld0LnSBDwI+zAXVm19r/3JmMHZwuzW1
	MxD2ziSeE2Dx4bQdTUwxsjJwBC338yMTa6U=
X-Received: by 2002:ac8:5dce:0:b0:466:8e17:cd1f with SMTP id d75a77b69052e-46a4a8bd2f0mr20728631cf.3.1734704510431;
        Fri, 20 Dec 2024 06:21:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH/huOKz3oK3ncU1RlSH6JPb5PAB/jklXXog8HcSxMtduI2FodLBdwfml/OQZAz6MVvpKX+1A==
X-Received: by 2002:ac8:5dce:0:b0:466:8e17:cd1f with SMTP id d75a77b69052e-46a4a8bd2f0mr20728491cf.3.1734704509990;
        Fri, 20 Dec 2024 06:21:49 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80701b148sm1767714a12.73.2024.12.20.06.21.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 06:21:48 -0800 (PST)
Message-ID: <b533ab3e-41e8-4078-99c9-1a9d80470279@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 15:21:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: arm,psci: Allow S2RAM power_state
 parameter description
To: Sudeep Holla <sudeep.holla@arm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241028-topic-cpu_suspend_s2ram-v1-1-9fdd9a04b75c@oss.qualcomm.com>
 <Z1LQOmEfFy640PjG@bogus>
 <54cc4221-ba5f-4741-9033-20874265ca01@oss.qualcomm.com>
 <Z2VUiHWHgbWowdal@bogus>
 <349bac70-87e0-4870-a3f0-9f6a3b3e6824@oss.qualcomm.com>
 <Z2V3amqWYDUWA2uM@bogus>
 <c80c4cdb-48e1-4b6f-8ab8-fad6e100af00@oss.qualcomm.com>
 <Z2V5WMN5aHQwQlNH@bogus>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z2V5WMN5aHQwQlNH@bogus>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 4UKPT2hTJgaX1csA6O5NCIoPch1xhUjo
X-Proofpoint-ORIG-GUID: 4UKPT2hTJgaX1csA6O5NCIoPch1xhUjo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 spamscore=0 mlxlogscore=657 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 impostorscore=0 adultscore=0 clxscore=1015
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200118

On 20.12.2024 3:04 PM, Sudeep Holla wrote:
> On Fri, Dec 20, 2024 at 02:57:34PM +0100, Konrad Dybcio wrote:
>> On 20.12.2024 2:55 PM, Sudeep Holla wrote:
>>>
>>> Please take a look at the preconditions for both the calls. They are
>>> different.
>>
>> Which is *precisely* why I want to tell the OS that it's a S2RAM state,
>> so that different actions can be taken in peripheral device drivers.
> 
> Yes we do that for SYSTEM_SUSPEND. And CPU_SUSPEND is not SYSTEM_SUSPEND
> hence 2 different APIs. My NACK still stands.

I'll just paste it here one more time to reassure you they are indeed
the same under the hood

https://github.com/ARM-software/arm-trusted-firmware/blob/master/lib/psci/psci_main.c#L179-L221

Konrad

