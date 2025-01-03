Return-Path: <devicetree+bounces-135341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D578EA00943
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 13:31:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1788B1884542
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 12:31:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9B7D1F9ED8;
	Fri,  3 Jan 2025 12:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oHXyB48+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB981FA157
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 12:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735907464; cv=none; b=LX+iYHwo9sbZNAgb1TVtksq3DL3OhDVGJmqjcphJslPgTA0pqwHiiSVjHkJAJC1niCQnDeiCyTtN74rBN6MbpDUpzF3U5fiNwzY9DY4TghuGvypbDFGidG4eWJm2Tiv/3bwefE7b3UllIvBZKyqih7lAcKOrYghz2ZNYhIXB8qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735907464; c=relaxed/simple;
	bh=nhPX9BG+gAyURmZkkpADTFWhVLQ46RSVNCccZpHnphk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EpWGeBxrqeFe34woG+qkKAWTqgZgnyStldehpue7omKGVLBLFayjIk03cVQ/ZOsAcT5HmYOqxV+YdXwf/pcDuAg89yg+i+mDd+Ke+Cz6ofPIlgbhOEoWmo+tWQAz/Py7q4ks/JkQl6W5/9meGY3kJMMDNEOrirnTymxZ5W2+T0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oHXyB48+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5037GFu5011995
	for <devicetree@vger.kernel.org>; Fri, 3 Jan 2025 12:31:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9NjXg2KQzeQJJP8EfrOwEtzdhvyUoy43usV3/CaC/ms=; b=oHXyB48+uhilODJj
	fgfrdtqFtICyXDQVJ3FWjZqUogD/5z9iVm1YDablCCnA017yDDMj8rwnjF0bXlm9
	2oeW9aIIcX0Y6fuu9H2J8bC8veZc6hop/137aHqk8D31d89G+VH/WNJq5bxcMzmM
	wY//w+pOsSyZ1o7ZzXqo3GuTgt6fcQWib/uK6S8UPCI33ncLvjQ7el4RpSeVe4Nw
	VgPcNiyHiiNG9cPwYe7MJvSaKnlMi0FSoW9P4ZXI4UV3nPhbpHXr52HTzvjAE1yc
	jqbkGnrVjqvgfWOuBfEN2IUV92rXKWOx7EmbHeLGED3TtKh5o4b+Tmx8i9oEEKHm
	7lH3jg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43xbbp0n4q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 12:31:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-467922cf961so35966781cf.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 04:30:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735907459; x=1736512259;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9NjXg2KQzeQJJP8EfrOwEtzdhvyUoy43usV3/CaC/ms=;
        b=usBDg97bZkzgkesPMeaZbpH6a4encM40UP9gwaHAaxiL+IfmLNVkCzGggvrkad9ZbE
         Fq+2fBGOMDC3XVqukgwV1MDy/qvfkOYzF5OnJFDTIXlKtAocpqvwTyueR/L5T5qihZxB
         bsOlPbmyz+qdd9GJT3t6RSEhEUn/ACA3j3EYVgucu/Mn8ZOH5AgA2VCqRw4q2NPklzH6
         RMS6kvrSxh2wQs34Sw77H2mdkLGafcq2h4A084cpzlHbsoTOlXeaTA0PCH+WXbn8fi1z
         j8QDc63CByo7SZ9iwJm9EWDGwD9KPupLfK/8neTK0yN9lf8RkS1sjkS/v77Yp5Xmgt0p
         pkmA==
X-Forwarded-Encrypted: i=1; AJvYcCVXo0F4aDPagdE8AnGVYzco77J4Tpzz/AVc0GoqNZikQ7sUxynB9Bk+9qLv2xV5AP2I6VZEYw9/01wn@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8hoXUUVJkL+wkT4x8fZO/odrJKxIpmFqajxWRPEmVN0v6Cz3L
	+utmIVLlW5Qv6kH3bImBtoX0gSvf64HoMWoC9v3vDO320LOtsuRIljP4kA+TouryBkwzhRVgUsv
	7uQ7pz+AthhTUx3YOS7GdMCi1de/teoyU2KG04yMkgx1RD7WZX/VkRcTZcoLf
X-Gm-Gg: ASbGncvSY9wCy1UNPmZw69n/qYnT3hy8lJdLxN5YaQo2D2iYXszRAb0n7aCt0Ko7j5M
	9E+eaLHSsIlrV5ZwR7J6sLLqTGj0vL0cIqFVl5yZbzI4Pc6sMs2CdYLjrXQzLrlC00tD/ICbCk8
	LZ8x9l2XVrwVHVy7EhnBiymqE+2GF5Cez1lCzJOwquG+jHvSAASFcrJG4F0fvjG9aUT/Hds1fSj
	5+Oh52xXnyn0VQgL6DV4pQKnmu9i6oAJU5TkD1hLcqmQ2+xZSWwr9B5lI+tHqtc5x+b9MfOMpu2
	ueH3q6q5pwPY4KlzAYRGBW7kGlg7c3mIvbk=
X-Received: by 2002:ac8:5f4b:0:b0:464:9faf:664b with SMTP id d75a77b69052e-46a4a8b7f74mr283383521cf.2.1735907459339;
        Fri, 03 Jan 2025 04:30:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGC5i6vcvdpJXvbFLYqlsfKgCGHZdyRcc4CCuROZOeuhDC64A5sgtg9yDqLeLq4zATQak9ZsQ==
X-Received: by 2002:ac8:5f4b:0:b0:464:9faf:664b with SMTP id d75a77b69052e-46a4a8b7f74mr283383361cf.2.1735907459031;
        Fri, 03 Jan 2025 04:30:59 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f06c7c2sm1913633666b.188.2025.01.03.04.30.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2025 04:30:58 -0800 (PST)
Message-ID: <fd4e6fe9-0a04-47b2-8da0-bf7f5390885a@oss.qualcomm.com>
Date: Fri, 3 Jan 2025 13:30:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: ipq5424: add spi nodes
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_varada@quicinc.com, quic_srichara@quicinc.com
References: <20250103063708.3256467-1-quic_mmanikan@quicinc.com>
 <20250103063708.3256467-2-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250103063708.3256467-2-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: AGW1whmg01-5RMFspuzfHZ4-3wD4c5Kd
X-Proofpoint-GUID: AGW1whmg01-5RMFspuzfHZ4-3wD4c5Kd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 mlxscore=0 suspectscore=0 impostorscore=0 adultscore=0 mlxlogscore=891
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501030110

On 3.01.2025 7:37 AM, Manikanta Mylavarapu wrote:
> Serial engines 4 and 5 on the IPQ5424 support SPI. Serial engine 4 is
> exclusively dedicated to SPI, whereas serial engine 5 is firmware based
> and supports SPI, I2C, and UART.
> 
> The SPI instance operates on serial engine 4, designated as spi0, and on
> serial engine 5, designated as spi1. Add both the spi0 and spi1 nodes.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

