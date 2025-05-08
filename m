Return-Path: <devicetree+bounces-175266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF49AB04C2
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 22:40:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D0BCE1BA2FC4
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 20:40:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 030C128C033;
	Thu,  8 May 2025 20:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b8KokouO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFE021B9FF
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 20:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746736824; cv=none; b=sZVle5hhdNKBSUzyJSSt9ZlkGrTNrdqovBro38ZZNB3Lqt3B9tE+SwsnxFwtGDkMyycCm/IPsQP9C7jAb+YgfRk2YpY2r3o0lwLNYhGjVM/sGZEQ7rPxYy7ZWeEvHd3YLvgR5oEQHhN3UM+v+y0+pAihrl2Db7eS6VaJgKfmSms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746736824; c=relaxed/simple;
	bh=AhHF+Zg9P6AUlvNG6nBBUhRwMQWQDJSBWU7BJowAgTY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CH+ppDLX4ytN4knPfUmP2ZxSqgomY2TugC0DojOmQ/2/JhRpcyYm+LTw6O81myau+Z8Se4NWuzukMXs4lbnEYw4hQcGK8WlD21wCdQl2vD9JVbntJUGz3fbmD0UDGLo82gG3rDqtYHJVmkKa4iELq5aiLK4OM8CmaMTwHZaHNmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b8KokouO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548DYeP6009418
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 20:40:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AhHF+Zg9P6AUlvNG6nBBUhRwMQWQDJSBWU7BJowAgTY=; b=b8KokouOyCVL8bxG
	KIpe85dIDDbXhz2GGZlm97ukbmHTrWJ0YxPx9qzf0bA1mmtyhl/cAdXsWWdX3O1k
	/5RqlykhyHJ/yRfbQNJ5a1pxs7Ns45ARUrw0b464PLFlYW26PyTsaI29CZOAGO8s
	Ee7KT8c2/0+VE1ytDQ5MN3ETBHiBsbxBzs+BQykGypAqzJ1dGa0TopiSOGD6I+2q
	M9U1UcT6fRWX3iIFfWJ1QfJFEzhSTnaP2DmIv0tlk6fQWZ/PJiQIUgFAGUoWBVQn
	exOmSLqMQu/UyOdDxuKqmYZ1e/M1oAOgJ0yoiHRpnIjUITCMqPC9/trR6c7oSux1
	JSTmyg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnpetf98-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 20:40:21 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-22e540658a0so21471015ad.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 13:40:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746736820; x=1747341620;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AhHF+Zg9P6AUlvNG6nBBUhRwMQWQDJSBWU7BJowAgTY=;
        b=ifmNWhYqgC9KUB2DVHmBVX6XINgffSiAWncdb4BvnYC6FYiVpyScie5Aj4KxTTiECn
         8+TvTk1RqJfnk/KmS3BQNa0lQAw04Cc/jLi8nnlYC9VmsPo+kw3Vo3JBa0zDQn27NIpN
         Zny16t4zU3ENowsq5Pj/QXnJtYuCpYTCnSHli5dH1sHegHUl9U1yk7q1GQ7QOfCeucDa
         cK7senOp/4z80zuzijo7E798mL790JJfFJP7n7wZJzNq9eg/eKlFPQ10xPwqC+EJ3GFd
         eFvf15xjdOvaDud0Zbu+wPOyr/+RdT/jQfHwO2jAoJzqle8RGIcGmiq9VzZMwIcrBbk4
         3qQw==
X-Forwarded-Encrypted: i=1; AJvYcCUG8AHDL7rSIcoDsKwhejxlTX6y1suhjbRs2/0/q8LWrtiZnQcKq3FixW9frYSdrWFcS7TRYjEMWHyL@vger.kernel.org
X-Gm-Message-State: AOJu0YzWf8ELrRqLjGNPT+hBWU7LPsj+OrKdqfwA3ZsQuoqwsiChLlyV
	zgj9WMk8YWe9ViBT+xfRyJbBO/Va2FlvOPAE818PEfZJ6sswEdi7saPYKlAuAQE9bsAFIpj1INd
	+NRpfIieWyezKRjyFCIbFNn/7b1J/Aw5fSXH0e2Svnj1pWlBCxtXxkNLMqHmc3x9VYMCI
X-Gm-Gg: ASbGnctGt4sLUem6lH9z6yPddn3ktrlsTCjD5+VpxSMfUfiMQ+BxIjjvt/0vZiSxEEw
	6H0fgznYhqpg1F3Xm541LCXQF8vP3TfWPPJpK1J1jJ76Sy1k+VVHOOnVbnHBl0EvbTt4Q8l7ztB
	GZtGH+J2HbCwOXrh6qb8TXSEQSWQDTVUyHz6h3C01Qu0tzaPhrZ2OhW6YFqc98ZzvmM+XiQp2xT
	4zJCl19t27vho9VhHmtANb6nLGRhkmK5arnGh15Z+O3n4PyqgHV+UYBPCFQvlNjlLg0Hiz9iOEy
	1lqcvxs96IcTb3PIWpmt7aX+8Z+Pkh/GSuHCveIL62sZAz92U9DrCNNXvRpx6J57NIU=
X-Received: by 2002:a17:903:2307:b0:22d:e57a:27b0 with SMTP id d9443c01a7336-22e846e080dmr67100825ad.2.1746736820183;
        Thu, 08 May 2025 13:40:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGoX0i0ze/m/yNJGb+SqmO3r1KcN2VR3l7IPxJUQFWcGhzOdj0P7XfpBMsof0CFauO/d6kk8Q==
X-Received: by 2002:a17:903:2307:b0:22d:e57a:27b0 with SMTP id d9443c01a7336-22e846e080dmr67100625ad.2.1746736819783;
        Thu, 08 May 2025 13:40:19 -0700 (PDT)
Received: from [10.71.111.209] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30c39dc8accsm446266a91.7.2025.05.08.13.40.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 13:40:19 -0700 (PDT)
Message-ID: <ab93bdde-1889-429a-9235-ed4cc53b5010@oss.qualcomm.com>
Date: Thu, 8 May 2025 13:40:18 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] soc: qcom: socinfo: add SM8750 SoC ID
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250508134635.1627031-1-mukesh.ojha@oss.qualcomm.com>
Content-Language: en-US
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
In-Reply-To: <20250508134635.1627031-1-mukesh.ojha@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDE4NSBTYWx0ZWRfX6+7jOkb9NO8F
 WAryRUFeYfc033OxSbHEvVVYJ4IWMA6O4jMDjNHYr60BbDU1U5uFyvfH3GyfLes3bET+U0f2tYM
 Rf1FNLzRr4Mqs5Q4nTFL8rZZLSqf6T/0LrnBEjmPJFgLS+oYiiNzWyWaoFfty79IC1mg7Gub6pT
 kpZGo13t6FD3ckaZkyIBe36cyZ38sjr9fSxtpkd7znS6XMWmifEeZZNcmaA4b1za/OIdqlZpvvD
 PhF9yMEwmm7rIAbWahjEt807RRBuoA9shfkBedHUN8fdFFMSd+q9KcP5WqDtHB5AWUofxPkbPrA
 NlvtC59azLrR2bcMnD6w/fZGPxbRhWt8lao2zj32blBxxewXcGFlVraRtnywueAmvFYd7T5ghnV
 sIs8qs8f5REgO7djFAiHi71ponk1+SZ12xC94+gotIsx/AKpMZfGTx3WKScpQ2i6G6tYt1Ol
X-Proofpoint-ORIG-GUID: v8qyfxXsAAfeAE3b83aVVvrKkAqcvoi1
X-Proofpoint-GUID: v8qyfxXsAAfeAE3b83aVVvrKkAqcvoi1
X-Authority-Analysis: v=2.4 cv=Yt4PR5YX c=1 sm=1 tr=0 ts=681d16b5 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=J9Vk1PX46GMNcKasQmoA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_06,2025-05-08_04,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0 adultscore=0 spamscore=0 impostorscore=0
 phishscore=0 lowpriorityscore=0 mlxlogscore=641 suspectscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505080185



On 5/8/2025 6:46 AM, Mukesh Ojha wrote:
> Update soc_id table for the Qualcomm SM8750 SoC to represent
> SM8750 machine.
>
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

Reviewed-by: Melody Olvera <melody.olvera@oss.qualcomm.com>

Thanks,
Melody

