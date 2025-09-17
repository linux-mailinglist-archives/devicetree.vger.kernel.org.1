Return-Path: <devicetree+bounces-218410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0CFB7F985
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:54:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7100F58464C
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8053333AB4;
	Wed, 17 Sep 2025 13:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IoCueL3b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E6232E72C
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758116817; cv=none; b=aavsKHK13Q+AhxEDkQQKASHcEbe7IlSL7KWNVSBT99lxEDURPOmbSafAfT1ZkmT7Ha5froqXOtsuCoqSwZbhOZ1WsKRBU4iSsiVl06vfedoyzHYQl+eXB7qHSwleUporNLGn6cWz3SR2L6iA4as6shBHWuXdDyG+vXSUXutOXTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758116817; c=relaxed/simple;
	bh=RwgGuPyKTCBSO/iOJFj8LyqIzyjQZ0GGQTuA4gXXKac=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CDXc5nhi3bv6I6KTXmuaaxiYOVOZytowqMN8148GmKP0k2YAem545J5jobLnRwCU4UhDaKVE+Fn0hUb0pVJsulhPNxuiDpRSEkkLO3NlN8my3JSAiUJ0p/FOGC9SyLLsgkgCpcmkh4Fq1KA+Ajfp+4LvArplzBviOFpvz8et/OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IoCueL3b; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H8XXFf027139
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:46:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RwgGuPyKTCBSO/iOJFj8LyqIzyjQZ0GGQTuA4gXXKac=; b=IoCueL3bfrp2DYCi
	vLUHwjwAW+ntbPQ/dCh2L0sSb9z8DxcyJXIYgHEgzZHBLwwVEwK/D7Zsf3pj++5k
	vPN/2xVzXQV13yjg7Hz6S0k4Y2CDvcDt47xz6WU1BNZ7IcZFDBGewM1UK7aJS2lt
	+wcPzJBZaFx4Y/PKif3vb2H/2TEAUUNcqsPDNuM5Bsf8Mj1kMs4S05C8PwcZbgQV
	YEk8bband0KNIvovShfngB9UvD8AEQCH7j1RNsnYrVLhv5CDuF8wuX5GN71Usm7z
	r3ggXbv3bgZCtlFBy+kP6nMQpk9rPKbHoqRZRonK8SclnzkQK7yLFA6eSEBuIM3S
	T616oA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxwjjpx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:46:54 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b79d7413eeso6527821cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:46:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758116814; x=1758721614;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RwgGuPyKTCBSO/iOJFj8LyqIzyjQZ0GGQTuA4gXXKac=;
        b=TutmdH80Q8u8wju1pOEMV0txDClQXBjT3P4XYX8m1fc6yxSGyhm3k7Xlq/Pf5ZGbOL
         1INMwRM16BTjTxA3Zghcrkrb0VEVglbxwnsmLqhl6/spJpVON0UU4ENj9IQ/nTf2t4ot
         KpCT4NH/0T4s+L9BmZNGKX1elp7hgJY8IlplyGdJTlE74dVdOiqOnvzB2qFqg0+IHH/j
         W7gsFmSe/fG88wna9xvj/Kkevolt7aBtB5xM3WJA/8s/Aub4kTeRiQBuN5+1DFCJ+jUO
         KKLNoR3ufEnjsmBZiL8hqSkrwCW19OdQWdv1VMOvCCfLd15KithykOvHwD/7C2BjXhLG
         LD0g==
X-Forwarded-Encrypted: i=1; AJvYcCUVhwFeeci09pzApDmkuzURFWtqNRCxmi15CRNvuKxSlPR06cKBExve1QaonPv2w39ucOD0HShyBHts@vger.kernel.org
X-Gm-Message-State: AOJu0Yzhoh3y2pMwhe7FuXW8+RZxYi7VJK/KilXDnSuLTCWVQjPA+Ewq
	k14IQSiX39/aZOAMkRPj4Mtbu6E9Te7E//rZBhsT9IAU7HnyHjJdyZ+TggY95KrfYaqwDM53iT9
	JhUxtom0lTyCUNzdhM1JueDXBBgw8U2QTMhK1INGsyll1Rh4Qbr1EK0OUdr0/Wubx
X-Gm-Gg: ASbGnctW+10wzaR6SS1JroeJmTzH0Z7odsm2Q8MXCEi0Ss1cxjiuuNOHIjRr5DzhNyF
	h8kmQwyxUE6V3qsdDBju3rCFkHDBG8Dnf3rtxDvEwTLxncCKQ02QmVMgS5e5tHKITwZEvLQZtbX
	1//XtHV1ZeCF9ph3pBzfEztm+L1mvC9CAc9YrmKL6gHNjHxYUUPd32zxar8VerFccSpXUtXUB3j
	8OGxw6GboIM0DTkwjNOt0m1BfyrRLKVoWHuloy2ip57YKlkd44y+tsAQgUv83iBatxK3G0wC4+Y
	SMXzYtweYjXS6GdOrU1uMA8wMEwM5FpQqmQGFlVLO+znkHDe+5ju5VLaHEjgyG53p9Tt421GzcK
	ETXmUd6DGnGIOtFKEct/o/A==
X-Received: by 2002:a05:622a:1a9d:b0:4b5:a0fb:59a6 with SMTP id d75a77b69052e-4ba65bc2015mr14609901cf.1.1758116814184;
        Wed, 17 Sep 2025 06:46:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGU9SK9QoEi4qqIyWuOLrD+1Koi2QQZhObu9zrUg9uyVY24N4I01Bsoa7ag79322ufzX+ZsQ==
X-Received: by 2002:a05:622a:1a9d:b0:4b5:a0fb:59a6 with SMTP id d75a77b69052e-4ba65bc2015mr14609671cf.1.1758116813649;
        Wed, 17 Sep 2025 06:46:53 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62ec551bf13sm13031804a12.53.2025.09.17.06.46.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 06:46:53 -0700 (PDT)
Message-ID: <adbbc9cd-dfe7-4983-865d-d311cddbdbf1@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 15:46:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/13] arm64: dts: qcom: sdm845-lg-judyln: Add lab/ibb
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-13-5e16e60263af@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250916-judyln-dts-v2-13-5e16e60263af@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX6wEC98vqrAZX
 RPdN5B8ZWDYYyux58UmCkvQhDf7rgroP0vtBNDGoNtEp1w3C2tsG3L1VdVM9gR+mk57f60SHF7b
 KtNpJoEldfpDRlyhnuPYIC6orUQY6ahj6FAP41LovPjzyWbMye4uah9MIywtINVUwyclx1w1K0u
 efm/OUsZybDCaH22musgVAAiLYbQna4lQVtQKEaEEANeIXH+S7RexWgBhCOdU7wYPwdooq7oQjC
 323vfcG7oZDOTA6YLjUo7cjKEltBxal6GvFFGa3inWL8ht0fLFEBChHFHnBlNKoFfTWuYRCZK4o
 B53bZL2OEln60V/+JyXzTwEa6Ln4ZP6v0YyZEIXVP76ukMmsEeDeB8KRRwIo/yM52yV5NlCC6pW
 R7Vglc6n
X-Proofpoint-GUID: nUIxbZJcpNraWpMjYlr7VvD8qKsqD8zW
X-Authority-Analysis: v=2.4 cv=ROezH5i+ c=1 sm=1 tr=0 ts=68cabbce cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=cdr5l01el_-Pmc56AxUA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: nUIxbZJcpNraWpMjYlr7VvD8qKsqD8zW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 bulkscore=0 spamscore=0 phishscore=0
 malwarescore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On 9/17/25 3:09 AM, Paul Sajna wrote:
> `regulator-always-on;` in ibb improves display blanking issue

..but doesn't let you save power when the display is not in use

That suggests your panel driver may not be sequencing the supplies
properly (or maybe the reset pin/commands may be misplaced)

Konrad

