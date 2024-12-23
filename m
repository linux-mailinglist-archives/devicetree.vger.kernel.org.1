Return-Path: <devicetree+bounces-133546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EF89FAE21
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 13:09:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80B7118816DB
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A0031A8F90;
	Mon, 23 Dec 2024 12:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P4ukVUVM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D007E166307
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734955748; cv=none; b=rP4hBD96jvp1UdRWx9BesauktXqkRbnGpOkuEaQsaR307Nae1WUwuf8gWT4JFYLNEVWs6KtBocUvl6en0qmEJHckBPLmCQfxV9qoTWApFtconTHcsArRHnOe6QJdSD7+FwaKdOu+gCk0Zl4ocya5aOhglhx0QoGkx0kur88b/n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734955748; c=relaxed/simple;
	bh=PWuxP0waSQYUPxwhiiAvg16IX/P1n90ONOkhHSXMCoE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B9VFUCufztXD3VwI9hWoKaJ70XOxfFPRvcCSj5h5oXiLXyFz9MW4AbER8sld7UBCKqtCdyC7VWrMa6FdauNjZW0rJzW93ErsrEjiC3cVjDJrTvV+888HDtwuNE+6nxKJ+TDVuPmlmyK/JRMmdQoy80H7zk5vwkLdWE9X8vPm/cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P4ukVUVM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BN5rXvT018305
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:09:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JIqQZWLugXMrbtd+Pv4u/UkQJRgRYN19wBd0if9gpuc=; b=P4ukVUVM4rjhxZ6t
	QV3r6behOX15JyCas3OnGOialfA9YaLDljXH2JcB2Sgx/mp5fd23itH5NeFnF9bA
	4K0AiX98izx5gA3X/c5BL6NcJxQ+NMX+QexH7mk+TrOOGb+iAOOobS46aezAgNhw
	dXY1VxmiUwzKmP6lHMQNdQpn80XCYjwJOF4aEFy143nLJ6oHCx8CKi82V/6IwNCS
	8EQu55doEHTXiQ/Aj7jfIYR91U3ClGTHp0xREbDg0RBQbdJR0qmCcfvp8/vwHQVw
	+Nw+/xvo0laYxScT223yOy1HivHNx5Qy2TklDupzh8P6BhgqK7UbdqGoOQRC/t4o
	oH+6Lg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43q245966e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:09:05 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-46792962c90so7713841cf.3
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 04:09:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734955743; x=1735560543;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JIqQZWLugXMrbtd+Pv4u/UkQJRgRYN19wBd0if9gpuc=;
        b=LntMBwIm6NfPaK9gUfqCoEhKXMsrim4b2d2OF/LCmM6E8VX2RJdAZoAUkhfpzY0oyJ
         +j/sK0MqfBhOfG+1477X0Zi3nA9D5D2VQdjuN22Xp5MRsxec9/zB/2ODADfwf9gA33+N
         6rdEBs/hCGQ2ke8xLL0YCtR9qBwGjHdg3Yh6UJkLqWEEsV155AeooPkEi9nq2RTkwqnx
         LQzHR/GJld/TSMyWudvDy1061wpEcjBfiQwMq3R4QTeD7iNiKOyC8ANTbLETRWEOrkxL
         JCBtMKMtYsqjYO6UUvlANRduxoWs0YJ5rbEeIAm8YkOu+VL1jzfJ/Bh+nd6p7pB3PyI/
         yoYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbeveftljMEt1ridX/XnHnGA4D9AZZ/O1h7sDhMlgNP8yklUPy4FOUfBAFH+/DHq91KBN/J2z8W2HJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yznbe4NBNqIogxbe5r1DIyw2jnmEyXRc0gGSIYB06awnccc6V7G
	f32cEqIrmORnwDYQ/i+IPh/2jCNtDTPlVWSS2+6By+7qZ74ysuQzbohYtnsfGGWIv/xlaYnxaan
	Us8kEe+YtW6rnuKUpk0G6/j1nOagVmOnAQtgj8OuHF1GNv2VcL5rafBhvuCvy73dzeXhq
X-Gm-Gg: ASbGncuLJ6CSuacOMBS53Z8HkmG30KkdtFeQ59HyobtX2SsmEszdaGCkizLmlgLaJG2
	wZ38n3OJrNnFgLSL3YD7idrc2dPiqODAmOEiVkL4jFiOTEYS1YgUEfjIFIWh+7rmYWUqvPz5FNE
	jdyHQByMPH/q0ev3r/QSps4BuDzeR4A3Hpm/zRye4ItBrcLpPmOCEu5snfLL0SqjxE1jQlulVqM
	lYjqGMlczFufIgzBKb9WckYwfcx7gzVeH7LDLRfvo0cCcFwpp6NQ3YKf0Tpf7FlFlsQgEH+kG3U
	gM4OLThgWBgIkhOtzbdmdBJ95E9tLlA7OdU=
X-Received: by 2002:a05:622a:449:b0:467:79fc:b009 with SMTP id d75a77b69052e-46a4a9709c3mr72961491cf.11.1734955743441;
        Mon, 23 Dec 2024 04:09:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGKxC+1tQNCBB99OwH/BNWtDZdrZOkZJjM7RnPRfHbzGHUdI6Li6KnV1PY3BSEGZakTMhxcEw==
X-Received: by 2002:a05:622a:449:b0:467:79fc:b009 with SMTP id d75a77b69052e-46a4a9709c3mr72961371cf.11.1734955743095;
        Mon, 23 Dec 2024 04:09:03 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d806fed752sm5028772a12.54.2024.12.23.04.09.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2024 04:09:02 -0800 (PST)
Message-ID: <e6b3e570-81ff-459c-8a5f-55014d22c6d8@oss.qualcomm.com>
Date: Mon, 23 Dec 2024 13:09:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: qcs8300: Add coresight nodes
To: Jie Gan <quic_jiegan@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241219024208.3462358-1-quic_jiegan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241219024208.3462358-1-quic_jiegan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: wo3GD_-ey0kubL5RDvcCBY81nEGsU7Dh
X-Proofpoint-GUID: wo3GD_-ey0kubL5RDvcCBY81nEGsU7Dh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 adultscore=0
 mlxlogscore=874 priorityscore=1501 malwarescore=0 mlxscore=0 spamscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412230109

On 19.12.2024 3:42 AM, Jie Gan wrote:
> Add following coresight components for QCS8300 platform.
> It includes CTI, dummy sink, dynamic Funnel, Replicator, STM,
> TPDM, TPDA and TMC ETF.
> 
> Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
> ---

So I took a look at a bunch of reg values in this patch and the
computer tells me they're bound to names similar to the compatible
strings (good).

This patch is unreviewably long, but at the same time it's made of
very repetitive bits. I'm trusting you that you tested out all of
these coresight components.

I scrolled through a chunk of this, and syntactically it looks good,
Rob's bot doesn't seem to complain either, so FWIW:

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

