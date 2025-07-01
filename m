Return-Path: <devicetree+bounces-191435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6C9AEF50F
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 12:28:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 780153B5924
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 10:28:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AD702701B1;
	Tue,  1 Jul 2025 10:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gg9ow7Fv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 909A225BF00
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 10:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751365707; cv=none; b=MQJBcmH3KFv19M27Vv5wJSFwBt8pKYl/bjgL+c/fAOG/yvAuqNKMtwZ1fMBHGYR1wcK0+4kuxvkgKxtg23zB0MzpgFJj3cb36qcKxRVA4cSBIMYhYWzhCTg2g8zLtsl8eb8nKvKfJKpD/WiMQCR0SF+h1QyCV1QEt1yXLpgQbNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751365707; c=relaxed/simple;
	bh=f2XWGKiM7b+TGOOPspJgljAJ4yzKonLygpgJj4Akdnw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j6/GhENGSJ3zjTMOTJNvmh6QSZ376F1OCdf8G0vGrkUddl92Qt26TwRCLVcZaMo4pRiz/3wZ1iftbSXDFFV16luoxYfRTCkLu3XnPmBhRi8aqm3HvhAsMd2LFNPu5pKsfjDAAmkVreSbMXhDe6cFdbjxUU6SXmm7C0953vU5Q5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gg9ow7Fv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5619W5iY000438
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 10:28:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ahl3B/k08YR6OfktkmU35JzJSNtv/TiPDQMy/Jz+Kco=; b=gg9ow7FvvFziifqu
	Rxc4zZKMeityJWr+ycQEwY/rRlAsUdikMsURW7fiiVy7U0K32hrLkhQ9ggIxWEVL
	s72oZQeaEN577VLQbERnu44izeC8fAlq9fckpeXuPd9hTREVjscl9CDN1N5QVcA6
	FWwVzNz5Kjg90tavHzHyu3R1Xkxun9D4j9EhvLTD4KckXIihBSzORkgpm5B9n5dI
	guZ+sH+W/qtsdYWfBxqagwCGMlyFRk9gu1RhwTXc+DMHFIoxZF2EdhBzkiZVMMkA
	G3RLwRauPDVNaevq8EWuqYzBjmOn+YYd33qTAQXWaQBS/HAMeZtoLyZPlcUkGcgk
	/FWSBw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j7qm8deu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 10:28:24 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fae04a3769so13560436d6.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 03:28:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751365703; x=1751970503;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ahl3B/k08YR6OfktkmU35JzJSNtv/TiPDQMy/Jz+Kco=;
        b=pYtDs0cVlUsI1XDyU+3A1bQyMb6OiB5zkydDdpN48dgDoj+pGQp46IvlQFCa0Gq+hd
         gXt0JwV5CemOV6XX/PegvOebbyqzjhk9FZqNCAkNmye8+rGd5ZGWDeab0SGrnNasVw2G
         KqMG9OjV6/xC3z4JZEKZYlSrTnEXi3Wjf4ErDqr3U86H0p5JorI8RvI0uZJt9FoDD5X2
         NqTCd6T8BWiyn9K5RCh8J3S4i2YN72nvLz/zitrlq8YE275/8jBQVelCSW2d249sRyLl
         YoDUqF0Sr/HuEAczyH9Y0mnYVzWuJduKPUgSxJnJpFSCb2S8Ng2OhwwBctfil7UTAn67
         X6Fg==
X-Forwarded-Encrypted: i=1; AJvYcCX13JSocbjeNH2lZcRvV99j7j4op4B8fxnP1wVo9yKHfUHajuhq6OeMHEmUzbZTJ3TUlVsxti9/Gcx7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+R2rpnk080YayLnPqRVEvTaduFqmxXJqCiwRSlp4oM5COk82h
	JfeIZ7D+9/4Ut49ocPVM4UsDMA76aaz9dMjvllnUdOB1yCJg8lHwDCZxb//up65l9d42sSAdauZ
	pa5fiqEIki4oWgGPt/xWLr8lUZGhBlfBNSQmcuNbQOJX4CfSr0uxHkU/E7X/PK/x3
X-Gm-Gg: ASbGnctoBUq3IhtB6rDQNb0s94TaOotSYwOJJSM0lvxC97nwZnhOS73nE9MFe+QU/W6
	yF7bV8c/exByZyqBi7tVHIXfKTs4a41V0nBNqXpQKnWr4/nzaPbWx+kJzKl3sCkot7Cgg8lEurw
	6Faq+iHxFZcUpL6sW1PcSgaODpjnLDIBOhfnb4cEuasEA22ywBuBaXW6TcQ8AshSF2RtaGtFOE9
	KUkBGOwNgmIbpXWiRu/FM5RD/TXTB2PX463wV+aUlleR2cr3+Y8C/26coCo30Xj7sc2ewPCmy/E
	0dBWS2du1RTZmS7nVKcp6wKAf4lnvhU58QwHb7LiMdDsXQWtAlNS6q+w59USWkpepsuAdSvdQsM
	mQcPcXCnS
X-Received: by 2002:a05:6214:1cc3:b0:6fa:ed8e:372c with SMTP id 6a1803df08f44-7010bc9deb3mr13521726d6.1.1751365703531;
        Tue, 01 Jul 2025 03:28:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0w75dWyDaxWtTa/al20E0z24mhzbw2+kJ2JCM/1dBoXrMVhR6R9EFXx+tAfk5goL1sGyTXQ==
X-Received: by 2002:a05:6214:1cc3:b0:6fa:ed8e:372c with SMTP id 6a1803df08f44-7010bc9deb3mr13521546d6.1.1751365702986;
        Tue, 01 Jul 2025 03:28:22 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c828bb60fsm7327077a12.3.2025.07.01.03.28.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 03:28:22 -0700 (PDT)
Message-ID: <c0fa0222-6d45-42e2-8dfd-8160cf0cceb6@oss.qualcomm.com>
Date: Tue, 1 Jul 2025 12:28:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq9574-rdp433: remove unused
 'sdc-default-state'
To: Gabor Juhos <j4g8y7@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250701-rdp433-remove-sdc-state-v1-1-ca0f156a42d5@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250701-rdp433-remove-sdc-state-v1-1-ca0f156a42d5@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=C4TpyRP+ c=1 sm=1 tr=0 ts=6863b848 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=usr-Xeseo6RQML_XfW0A:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: wiO7_f5pxnFhryAIpMBqZ_TtWnyYKqrC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDA2MyBTYWx0ZWRfX8ZBlJAAqacpM
 aaLKKhrLDolgE4ouXPO/HWe+6mSMSbkWg3o1Htq5DM4EA5JlOcACxY5b7vOretse+ojtNE353he
 ZsJ310oLSlo2evO/OjonPfuxg7POk21aRQsVXJo0q95cdhycELVkIqeYF79nn/NCEgMkgWKBAEH
 bHTrKrcIclgO4h5f/pa7IdNBXLHVQp643Nd5xL+u/MNsdW8GGsTY5ILb9WbRT/6Z0wzNXaNOJ8g
 5DndV002X8IfrREJqv7EiHHFM7G7ibyf7P/psdl9/ov1yzdOfjbhSqiBmB6wxK0YSiADepb6m8w
 7zeVVXB9NASDAYXIhx6TEcFjhQyBHef5vhQq60ALEXgMc0N5O1yNcPtR7tsnqHJoHt/vZBlnaBX
 ial6nSFMSsI96bWACoZAMqsfyNOQVsvQ4NSdeCe0EWNQE43cNb7FEqnkvLGWOwb102lgueu/
X-Proofpoint-GUID: wiO7_f5pxnFhryAIpMBqZ_TtWnyYKqrC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_02,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 mlxscore=0 mlxlogscore=844
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507010063



On 01-Jul-25 12:10, Gabor Juhos wrote:
> Since commit 8140d10568a8 ("arm64: dts: qcom: ipq9574: Remove eMMC node"),
> the 'sdc-default-state' pinctrl state is not used so remove that.
> 
> Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

