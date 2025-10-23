Return-Path: <devicetree+bounces-230136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF09BFFFA0
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 10:42:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CED4E35310E
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:42:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A6B630170F;
	Thu, 23 Oct 2025 08:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WQRrXgc6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE18630171C
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761208949; cv=none; b=nOVp9/xHczBvDWsic3X/ffaLztYfOYQNoquHDKGWubE6948jX2Qe80xzB/WqUPv5wK1W3TryJKqeb9YngspdeKBQt8S3UbniIiBUdtJj7rLlK7AZ5quPgghUXSzaDKXC0oAiE/dFai0XexI2qPy4bluh/7Qd/V10kddtAbnq/mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761208949; c=relaxed/simple;
	bh=fjw+6ZDF1PL5GDq3q972gH89f6sufYhNm0JI5qAyHJ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gdyAdSRsWKd4i91aqqQbofid8Sm0oder3rHme9ntMe6kaDv00oCDKqJ7WJddPhlDzlFfGI2Nu8xjGIbmsBVG9I4m+QmjhYHeHmaZxrtYADVUzyWRZRl11EIlZ83pBnEO4gBJDuQ0o0up7LkcySHqbnKyHkRiCyXIVTtF7BRbk3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WQRrXgc6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N78D7R029712
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:42:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ofYX3HjRKgU33R+lakZyIrCWXfnZSj60qZrS5ZoOf3I=; b=WQRrXgc6kEvZndPz
	v6shTzHq7v1GyEeMcW7DUeVMdqHbf9ElamHkXy7wc/OYu3c/IFwd84d151HngCzs
	Cm6yw4jqRbUWTaCBvziHW686f7oyCdS33p4LYc2KxeNnj5cWXNFg6eErI0AGBsut
	xyJOyoSaVJd38nLBFnlYPYCDQZUOhv2AG72eyc08RP2+oz6JTeqbhUCRntUfrM4A
	sisf5Bp+k18FeKipSKKBdYFxYVhEorKAD0m9bsdpajEorBpt/9lk7xgl/ChPx8vj
	8p2Sc0UYalFqwJqt/AXwgI50LuGXkgsTleB6aS/4GEYT5hqHNmeRubXPT3KvADfu
	At1zTw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge7n67-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:42:26 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b62f9247dd1so508104a12.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:42:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761208945; x=1761813745;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ofYX3HjRKgU33R+lakZyIrCWXfnZSj60qZrS5ZoOf3I=;
        b=heP/SFAKJCP1x6KClp+2ksrkxOZ3seRCtNDMhTPuURZHnho3JpyXGncRmDItp0Ckcg
         iHvsGwZl3qUBP53FXjfUrtbu4BSbg8bLe+zLLJIk2geiottm10MNhSKmHtY/BLeWZq06
         0pnWbnn6HeyZtGczbBIkpNr2VVfzgGDOH9aSLtcHofSW0vYucIYpigGfthZpZb0fNgfr
         lIdpbglQwsJMLTHUXmwGTxZIBX+kiZAq1/2pFD3FtDM0Xp1HWJWw+66HLz61g3qXLIcu
         KbUPj3495q3by3JHvgAWqs7cNxJB8m8Zc7BNxCKwroz5ybE2gql0TgTvFc0qib49e33Z
         vevw==
X-Forwarded-Encrypted: i=1; AJvYcCWYEDhm43LUtf2C8ir7/w25tIeeIkn1KyeiQ9BUzNu2zJsyQ0q0l31+7qtoMIMsJwKogi1mCRZoR+tS@vger.kernel.org
X-Gm-Message-State: AOJu0YwxD/ecOSSNHmM8TVo6iIpx8z9QzMBw57+1yZHUQM+uL07p3Mnd
	YolPxdJnc/kZuu5WA5shmp+ovpix+Pnx4YfZiw1KfpZOkOah82T4sQYRwb6/t+ztryMD4Oo1f9Y
	nZmE08SMCaM4YJUnjJOoQ8WeAesRogjKiXAv+06Rirx6JLdYa2W8+JzGioRw6IQFl
X-Gm-Gg: ASbGncuiv0kzQsd7TAlBxr6XlYdf/Rnwx51zh6Qbtjyi6ObJ7u+7ljuB1x7RSEd4XTn
	9oa9/9gbSV4EG9V30kuvKRUPM8UL5FBwq+w/PGr4KyeAP26f/KltNAgd75R/iTMSqbZOIK9A+sv
	tOURY57jACUuO/VnLTVso1JsFGN9yXM/I4wMPtCqY7UN9FGunvyv85hJoxGe0NBCO8IUQsnkV0v
	eZYkXxdwslMAXyBY6y51flBpjT0yk13UjysrJHUalLfEhCDZUzK7F4+Y1g7dchE2K9RMR2eadyX
	mXoWC79QoMPgQuNUllqHno1wcL/KPPWO+1AQA1d6W2c3LflpMs0ROKACMZisSHrOlUxGJlbdEeF
	lrI5VFB7NL1altL1gLdcihK/yC6U=
X-Received: by 2002:a05:6a21:3988:b0:2b7:e136:1f30 with SMTP id adf61e73a8af0-33c626aecb4mr2160440637.55.1761208944637;
        Thu, 23 Oct 2025 01:42:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2rBCLzjTPJc/nY65doA/UHQAoORgCvBAhguw9qkE0tE9g8A0pq4eU8cfSTj3QkVtEG+RGhA==
X-Received: by 2002:a05:6a21:3988:b0:2b7:e136:1f30 with SMTP id adf61e73a8af0-33c626aecb4mr2160417637.55.1761208944214;
        Thu, 23 Oct 2025 01:42:24 -0700 (PDT)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e2247a7f1sm5037500a91.14.2025.10.23.01.42.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 01:42:23 -0700 (PDT)
Message-ID: <703cfc97-ff4b-47f5-9f14-fb3ea4f68f7a@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 14:12:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] Add support for Clock controllers for Kaanapali
To: Bjorn Andersson <andersson@kernel.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
 <hy3dcra2izm3elcrmvmsyfeht6e4bhzqzy35ooqywve2c2htfg@24hpt2nn6um5>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <hy3dcra2izm3elcrmvmsyfeht6e4bhzqzy35ooqywve2c2htfg@24hpt2nn6um5>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfXz4qcsHEosjcc
 INuDOqb84kg11mAdQsp/fIbQISUWSzdp6tO7z+osYx5WuZL27msxapJBdYuQiibtjLpg9aDCxjs
 YKAln4flvVuU7x/XV+TZxcPKHfsHUqI9Xo0uI0rJ3deSmskwfkh88+rCyg/0S2tYvp8FUTz8Vt1
 vRKEGZcgbPNp7yMtlz2gUSFhY4ZXj92J4ZS1Wz+z7mLVIL/lO6SHBfTVtm4ra3X+wo/zTlCZmAb
 0SZkte0FHOh2VaogydYwsKim3zXTd8H274AEAzY7qWj0HipYWmuvNZvb+ypbrtAQ7yCrTF+5n0s
 2UUyAyG2gd7jPQ6dFrAtdIKUVtjhAsNfg2OzKydoQJ/hgy1WtlltsSBVhaLODE9UQZqw45cZOFG
 3HOjxO0/pYbrJGUTuQJc8329bnCajw==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f9ea72 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=M_Sh8l_qeD7bdTgo-sgA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: IW24_7kNdDsANTA8poex7SsrnOvqaSgI
X-Proofpoint-ORIG-GUID: IW24_7kNdDsANTA8poex7SsrnOvqaSgI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020



On 10/23/2025 3:23 AM, Bjorn Andersson wrote:
> On Wed, Sep 24, 2025 at 03:58:52PM -0700, Jingyi Wang wrote:
>> Add support for Global clock controller(GCC), TCSR and the RPMH clock
>> controller for the Qualcomm Kaanapali SoC. And update the PLL support.
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>> Taniya Das (9):
>>       dt-bindings: clock: qcom-rpmhcc: Add RPMHCC for Kaanapali
>>       dt-bindings: clock: qcom: Document the Kaanapali TCSR Clock Controller
>>       dt-bindings: clock: qcom: Add Kaanapali Global clock controller
>>       clk: qcom: rpmh: Add support for Kaanapali rpmh clocks
>>       clk: qcom: Update TCSR clock driver for Kaanapali
>>       clk: qcom: Add support for Global clock controller on Kaanapali
>>       clk: qcom: clk-alpha-pll: Update the PLL support for cal_l
>>       clk: qcom: clk-alpha-pll: Add support for controlling Pongo EKO_T PLL
>>       clk: qcom: clk-alpha-pll: Add support for controlling Rivian PLL
> 
> The series adds rpmh, tcsr and global clock controllers, and then it
> adds support for cal_l and two new PLL types.
> 

This ordering I will fix in the next patch.

> I assumed that meant that the order of the patches was wrong, but I
> can't find anything in this series that depend on these 3 last patches.
> 

These were originally part of the Multimedia clock series and got
introduced after Jingyi mentioned they need to be moved to this series.
I can update the order of the patches to RPMHCC, TCSRCC, PLL code
changes and then the GCC clock controller if that seems okay for these
patches, please suggest.

> They seems to just add dead code?
> 
> Regards,
> Bjorn
> 
>>
>>  .../devicetree/bindings/clock/qcom,rpmhcc.yaml     |    1 +
>>  .../bindings/clock/qcom,sm8550-tcsr.yaml           |    1 +
>>  .../devicetree/bindings/clock/qcom,sm8750-gcc.yaml |    8 +-
>>  drivers/clk/qcom/Kconfig                           |    9 +
>>  drivers/clk/qcom/Makefile                          |    1 +
>>  drivers/clk/qcom/clk-alpha-pll.c                   |   20 +-
>>  drivers/clk/qcom/clk-alpha-pll.h                   |    7 +
>>  drivers/clk/qcom/clk-rpmh.c                        |   39 +
>>  drivers/clk/qcom/gcc-kaanapali.c                   | 3541 ++++++++++++++++++++
>>  drivers/clk/qcom/tcsrcc-sm8750.c                   |   34 +-
>>  include/dt-bindings/clock/qcom,kaanapali-gcc.h     |  241 ++
>>  11 files changed, 3897 insertions(+), 5 deletions(-)
>> ---
>> base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
>> change-id: 20250917-knp-clk-c60d94492863
>>
>> Best regards,
>> -- 
>> Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>

-- 
Thanks,
Taniya Das


