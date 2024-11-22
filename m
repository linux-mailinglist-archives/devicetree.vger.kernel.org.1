Return-Path: <devicetree+bounces-123788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E59E9D5F70
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 14:00:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9E4B7B2197D
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 13:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E3CE1DF258;
	Fri, 22 Nov 2024 13:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VPY66MkL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70C61D7989
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 13:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732280432; cv=none; b=Lo0X6BTvdFXxuYpUQrGERPSy/tlV9xJ6gYXKrD/CwkXDBLPzdHTSjhtekCOBY4LhwAHdmlRYJHQ4UqMHCyjRpsiZxa546rQgpyNbrydND6GyIKP/MJ+Q+D5rpa64SJXzUARbrXnniUE+cEC8N6Y/cZdxlk9WZDItTg59JTAcp0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732280432; c=relaxed/simple;
	bh=OdrJvFkqb6bC+EloR79wkBi1bpd0qviV4hmO6yyAIR8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M70COdKCsv0Ft7zOH4ahjcBuyg9OAulQwC2B9kMgsKOfogFwbfx7oGMQcRlEOjcuTVedtGExfwa9JeXETNzNXNgESNeJ982QK9S2jdewvgaOmE8ME6b8X0N9LZQqpRKt+6VYDxunpJ6nmMScX/Kf4tOYVjdkVGPu45AQ4iZaVvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VPY66MkL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AM2MnNK027670
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 13:00:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LH+hnBu66kYZie3BVxH3uKx5YB7h/LfFrN1BKJMM4cQ=; b=VPY66MkLr9gAvTTg
	rMiQzo5yOUErjsj+EEtMbw3XPcdGjxyx7OWHtBzfg7N2C3aHoq08VBOF7GuJIiuD
	GOsneK3dPPbRT9tFinqrSopE+9MPytX1V+gPceK7cfL2W7rmMuuENZS2pWtD3Nwr
	4hJeH46Z5Yw1lOF6qdN30FzqQgo8tGzcZfvSJdHl5COVwx3YWLTI0GP3c+ATP23g
	OgaEEmBFWD8Ncrz6efqMXD91L9CWf8XLUdnJjo6/tvn3K5CsHnf8h258lPz3kXid
	NlX0HhoyFxxkZEa3CilkYrHZZEXmOoiyX+ZVsOp6tJewJbkvUMT4dcuY/oIbY9v5
	wSBNPg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 432h4dseyy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 13:00:29 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d41c6c7bc1so5603346d6.0
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 05:00:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732280428; x=1732885228;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LH+hnBu66kYZie3BVxH3uKx5YB7h/LfFrN1BKJMM4cQ=;
        b=YV+Ytg1necUP+PWQ4qKZhLexzeLjCFvcm1o7zGVvkEpsUrmjR8WWCL+iC/8dxPAOIA
         P9OcDwnoo2An4efB8ZQTngokVZFB0qaYPGs3aHl2BQHhRREtbdb/KsKfbLPNfA3MBso+
         8fjEZvA3RDihQb0DAEnNrQtCla1HVXi/q8pKp5GHEC9nTJe7CIV2KuC1h0OB74WxBaL+
         CC54XFfSnoymbeGgXfGFa3MegjN6tfzW5dgVwZBH6ZKHRXoploR5kElbVC4WTcBnu7Me
         WQGalNqcwhp3/XtjF7avQXZ9gnJ51RjrQfv9D2CcH2u/q1JtVJhHydsLj4amnKD3BXgW
         hPaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBZzntAblbdnjH4JR3e/dUALFbOwcRNzb9yPyFRo9XrJukgawcDh+FWU9yvGNseiRzDAxTf5fVsqmS@vger.kernel.org
X-Gm-Message-State: AOJu0YwkU/4EEgzNvGVw30d+XsGi0sKgJ7VBkxcwfcbXn19ZNaTotCjl
	4OWL5G1eguR0LUk4pRrh5Ewi1XILuiMrll2zpqPwtpBBx4DEX4BmN1iCtjI+SLs36drn+JWH9hz
	yiaSLkwunHuNk22m72YbSsAuRJTvnqH2U4VM9BcZ+xGxDR+fboujqYmM2tx5y
X-Gm-Gg: ASbGnctBlmLTes8/yuUpi3pJHsbjHEqvGtTJZVk8s15rwV8PHZnXqXqTr/aQdMtKdUR
	xMhrIsk4KQlxpnTIOirdEVL7PhdXbneVb8lyYFOEmD+uwpSVOcf+jXJKh9bdwoDKrsOAjzxA6AJ
	mKku7vRmKm0cB9Jp8gzumJ6WVYVxbO57Qo+2Cm0MQMaMhe2WtKDKa0A8cfyA468zDBI4f9QliaE
	Y1pUQwHi93oBBtXYd9Ppu0QUo44cxeF1gJncHdxFSu28s3aPjfzFQar57HJZqvnJDgRD0yxlZ2n
	J+30h9HXnvDLP/qUeJsbCg+2J3qSprw=
X-Received: by 2002:a05:620a:2684:b0:7b1:4840:d5d0 with SMTP id af79cd13be357-7b5143e3146mr145388985a.0.1732280428629;
        Fri, 22 Nov 2024 05:00:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGZagaW1WN7Rqv4pENPxu3N+jG7jSkKgHtojYpFMpucDcbOsPAqZQVCoL0pN6ftBfX85gSRag==
X-Received: by 2002:a05:620a:2684:b0:7b1:4840:d5d0 with SMTP id af79cd13be357-7b5143e3146mr145386885a.0.1732280428147;
        Fri, 22 Nov 2024 05:00:28 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa50b28f6b3sm98954966b.23.2024.11.22.05.00.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 05:00:27 -0800 (PST)
Message-ID: <0a9a0566-7c04-488e-a387-bc8aa2d314d8@oss.qualcomm.com>
Date: Fri, 22 Nov 2024 14:00:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] arm64: dts: qcom: sa8775p-ride: Enable Display
 Port
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com,
        quic_vproddut@quicinc.com, quic_abhinavk@quicinc.com
References: <20241121091401.20584-1-quic_mukhopad@quicinc.com>
 <20241121091401.20584-3-quic_mukhopad@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241121091401.20584-3-quic_mukhopad@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: sDDXnuUTV63HVTx06mbvNZA6NUzzUZpj
X-Proofpoint-GUID: sDDXnuUTV63HVTx06mbvNZA6NUzzUZpj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 mlxlogscore=997 spamscore=0 adultscore=0 mlxscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411220110

On 21.11.2024 10:14 AM, Soutrik Mukhopadhyay wrote:
> The Qualcomm SA8775P platform comes with 2 DisplayPort controllers
> for each mdss. edp0 and edp1 correspond to the DP controllers of
> mdss0, whereas edp2 and edp3 correspond to the DP controllers of
> mdss1. This change enables only the DP controllers, DPTX0 and DPTX1
> alongside their corresponding PHYs of mdss0, which have been
> validated.
> 
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---

[...]

> +&mdss0_dp0_phy {
> +	status = "okay";

Please make status the last property, like in other nodes

Konrad

