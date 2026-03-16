Return-Path: <devicetree+bounces-276084-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBJPLk3at2mcWAEAu9opvQ
	(envelope-from <devicetree+bounces-276084-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:24:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED85297DE1
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:24:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CC9303038D21
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2884338F92D;
	Mon, 16 Mar 2026 10:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T+s++aG7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D5lnVTjh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B0238F647
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773656580; cv=none; b=R5xQJLYprMC3Sb0AMzQ4vxkGYkYRxGDMTLmnKF8M2aKhDS1cttouM7zn3jGKA44GpTsZWDDXuzO80yxb/gHZqEkWwUf1hQ2ASWdvPRxahjhTVngjb7/iX/KNsyvGbK0WCfBv3/Rlbtoj8ugHrs9afz3qW5F77b9JUxPph9bl+TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773656580; c=relaxed/simple;
	bh=SQVI6k4aCbiCeCNLXIx1I0+fKjm6v1C1tutNaXc+CNA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c2FUjY13ebRpr+6kfKI6GpXL90JgvlctpyDPuv/7pt8OGw1q1bpCUy/P6hMt3ORwN+StZ473nNMknMdPY/LVoI3eJIIEVy66hOD7CTRcCqY00/v/+nxXA8QwcINfX5F3E02BvDjZth6xqqMMCsHCJpvIKk1aupOxC+fFrY9hEU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T+s++aG7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D5lnVTjh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64hum744133
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:22:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mMLVJCkhpdvuaYBZT6ZJtpjc60jL3K/BIc3n5U+wroc=; b=T+s++aG7kI83DMIZ
	DPR88V5qU3L2BoOYdVP1CJZRrpds/xN4D767MuHpNYkHtVSlToGLTpG/vvAT0LY1
	lfgWT9FH0hO0DxciHbzSuM/RNX8BmvahKcBZRUMYOqwUofJDOSR/0SIaebHais96
	7AIiMEZ9OyrDDXoO/ZZOX549V8JatK1/D8STEKn2c+L2Ic3DKYKogaD3IRbRzV+U
	ihbzFG4APTS1vEH/Paeju6KPaDrM/FalwUM85X/W/pbG978Y4AaqxA5AvmGpf+Rj
	wMi/2vWnZ+HCAvLAtk3oilnvoItjhx1ArV1Of2G6h+cjyInGRC3P4ZwUuQnfEHeo
	zA6Rlg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw00bdaad-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:22:57 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c737b6686ddso2942290a12.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773656577; x=1774261377; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mMLVJCkhpdvuaYBZT6ZJtpjc60jL3K/BIc3n5U+wroc=;
        b=D5lnVTjht8IUNLGjgm+0tullxHXIzjwogu2Rm+5dR3stYCqCSUoM+HLTEL/obYXczW
         1TGg+YkFg3HIWOOCkY/jY7EOqQefF3t54Y2+MOipITgmw5AOk2F27ljQhc8+aZN7wo8t
         rqHn/FbgDALVLt977+k7C0ds/mbzXncN2D5TK6GWI9siVe8VxxK4gB011P/02Lxin3K4
         mvJXk1HVha0CU0MNI/an7xWWx661toH1IdCgXdZqan0DLFft/aLaG76RT5/KVyb/WGmW
         FF7zw3rrUwek1DWa0qdQDQnx0APor9BsrfcrN/I5OoiWqeUvvS2GN33LbNBfSb+1PYLp
         KQKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773656577; x=1774261377;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mMLVJCkhpdvuaYBZT6ZJtpjc60jL3K/BIc3n5U+wroc=;
        b=ep/U/dmeo/+4Q22ZfNledQwUP+AQk/7smE72+XM3XTXagQr3h+NMe7SbPl10fyB8OL
         bNgJ5UZC6kwYNXajGwqGofR/iR6T4dGnNPy6PqG5z3RIVKaBETVnHmb5emyUxoFyI6SX
         ZhfcQbFmEvjv/Tj5Do7dM9vHYNsV90RhIDVoSkAAqq5Iy0MsJLuhxULLng5VYlOVJtqE
         uKiLbc54eqZTXpjJkVH9QhCliWYUpiJrzOl0NaKUU8mZCTPeBq6rYkYxzOx0TPJmbmN0
         +UBntSmNrIAo1WaTjr/Ibd/di7smIkTOH5boHLkRqtkwEcSz2+sg8AT//B120YgGw/NQ
         6flw==
X-Forwarded-Encrypted: i=1; AJvYcCUlKEO8/3pHB17CksbS84PQX73docMe7HRT8FDtRNQ+yccuo/Pat9v3PGvrgMSDJg9x/xie70tJF8xy@vger.kernel.org
X-Gm-Message-State: AOJu0YwKjWHUN15JSN8MYLoFxhrlMeR3jdC2Ivs9y3YvvddFnpmxX95O
	nO/3Y+4wcg8sbWl3KgwUI0aib0yjzPrLKapUgovKjJXWgmZoSwkyLA7hXaIvmLPLPB521RsFBkC
	FIi1bMVZ9YJIiKE2EM3XDkytAcQmrPNn3XyfAXqJnY0p+/yHEjH44kUq4j1neFGF7
X-Gm-Gg: ATEYQzwm2fBSw58kNND4IxJ4VK2PwVNgjEDcLAg6kGpoUgP4pzpk3d1wsRmqOhYXHOo
	7r57rilSzZGyBGU79ttcUw5LEJB2+w3wGycxa/sUfEwgKszUDcyXzRW4ZMAVMJCX4a76IYoaf8p
	RzPpXBc90YBRZSMbzCB/FViKu8bmTakBQDo/+78yxB71z9kipgrJwOz9S26rIt013Q3ZfSwyNP6
	j7Wl/5CLC0Om/qYjrcznOels4z5UtC422RRTxKCDbRAVTghbSb4/IShXs+U046L/sa9SzIPKWEP
	vwnT62wL5DjiMn5ejrN5vS/4CNwU1WqZqVH2rzIWMV3XmGYcAJ2XpB59rCBEUxq+BnpOfSx7lUI
	qiy6yiZuYp8vmgbeRD7XbHSybpFHwoYkdIQldLYJar83cOGP1vEqbJ5ZoAhjTqFXNFGChGasdIY
	it9QElW92/NDI9xGbBvXzF6BX9Imdk3RO10A==
X-Received: by 2002:a05:6a00:2d90:b0:7fb:f87d:a0aa with SMTP id d2e1a72fcca58-82a19916342mr11124615b3a.52.1773656576762;
        Mon, 16 Mar 2026 03:22:56 -0700 (PDT)
X-Received: by 2002:a05:6a00:2d90:b0:7fb:f87d:a0aa with SMTP id d2e1a72fcca58-82a19916342mr11124592b3a.52.1773656576284;
        Mon, 16 Mar 2026 03:22:56 -0700 (PDT)
Received: from [10.79.197.144] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07244071sm13441253b3a.6.2026.03.16.03.22.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 03:22:55 -0700 (PDT)
Message-ID: <bb38d7b7-859d-423a-9837-1b678975bd06@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 15:52:50 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] Add driver for EC found on Qualcomm reference
 devices
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        platform-driver-x86@vger.kernel.org,
        Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <132116be-2964-4b98-be2b-1baae5bfb58e@linaro.org>
 <19e8837b-d711-4d0e-ba9c-e9b2c8330969@oss.qualcomm.com>
 <aabf9bfa-aa90-411c-b9f6-706f963a5ab0@linaro.org>
 <azoaku7s3lxgcccc2rrp2bljbvqeitax2bl47k7eemy6uhcr2g@kveqod2tstgk>
 <ca7d675d-139d-4fbd-b57e-5b233a0e2922@linaro.org>
Content-Language: en-US
From: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
In-Reply-To: <ca7d675d-139d-4fbd-b57e-5b233a0e2922@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=IsATsb/g c=1 sm=1 tr=0 ts=69b7da01 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=meSk0gseeHhLLlbLLrwA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA3OSBTYWx0ZWRfX5u1VEuLmwTsl
 FgToIyxAfygHWUVnYwdsXmNjN0Ef77ELt2I0BRJOCOATmK0tErV4hwDJoH/MKW8o7IEX/8Y3rY3
 SzCJarKv8D4xYwqPGTGwE87dmvNQ36IEgnck30ru+1cVts84jXFhQsPT1MnDh8nI2BzgMlnCXlt
 dKgBPwNG2XcWGOAGkj8JsFHFo5dMtcUemVpsOaAZvmuAuSYOOjA4UH5shckTxx9h59vAfHkgPr8
 O3erDOJiE3W8LDHrKvfOm3k/tRuXE+Ivwkg0RoWSNTenITboWHnN5qogXfAEqi06bZfqc5aDJYN
 6YSghcuShSgYUv5RM4/XmwXGP7i4rgIYvOPJD1Q+FZ3jnQLRyCoXsZF1XyFaHK6Mtqy4MWd4VLQ
 sqDnXLtD4H3PW41y/u+yn9jw8Tsd2ZhEIoV4a+hsqj84nSnZU8r/1+8eN/h20FmKnaMJdeLNrF/
 CHKaM1S0rBdITyM5U/g==
X-Proofpoint-GUID: abjFenSIqROXnB2xK-O8bG3vPdZFvJcq
X-Proofpoint-ORIG-GUID: abjFenSIqROXnB2xK-O8bG3vPdZFvJcq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160079
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.intel.com,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-276084-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anvesh.p@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7ED85297DE1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/14/2026 9:39 AM, Bryan O'Donoghue wrote:
> On 13/03/2026 17:17, Dmitry Baryshkov wrote:
>>> Fan Count == 0 || Thermistor == 0 => error and probe() fail.
>> WHy? EC is still there. QUite useless though.
> 
> You want to register when zero fans are found, zero thermistors... ?
> 
> That's a bit fruity.
> 

We need to keep the driver loaded even if zero fans are reported, as it
is also responsible for sending suspend/resume notifications to the EC.
Failing the probe would prevent these PM notifications from reaching the EC.

Instead, I will add a dev_warn message suggesting a firmware upgrade
when zero fans are found. Let me know your thoughts.

> ---
> bod

-- 
Best Regards,
Anvesh


