Return-Path: <devicetree+bounces-254618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 98067D1A0C2
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:59:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A4083025166
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:58:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 893A633C19C;
	Tue, 13 Jan 2026 15:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K71Cqt9b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OByXrC+P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0392F532C
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768319913; cv=none; b=CVkVg+qAiLYYmkBY9/Qa9+3ispEbQKTe8Xn8XyDkfzu0s4N5nTz+Pii10d8XxMeYeS2mwh/zJx8WXLwJ+y4yiyH9LmtLUP03vq+NLXwssoyOuCjzrIT9O5IGbxnHzi1W7haBTPRYELQhIkGeSWAJcBX2HMy3xKzPeja3uqE8ep0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768319913; c=relaxed/simple;
	bh=ZvSMBuV+dRhDzKRtELRaYXIdxCJ1uwiBrY4sMZmaInk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fhly/rLvkgQ5nSbIXRgF3UY/M+ChxK5HL3ttDpJ8ATjXjQCdf3HsHog91dp0KnVfjyYbuuMayUVefyR6V/l3DoyrL18xDeuskX3GuEud+OAqDp47lk+bIq7ZRvmxPTSWMyvwcIIrxjLrEl+OcLHfP+Zil4ixlCowaGmvWgjclC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K71Cqt9b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OByXrC+P; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DDfw563735146
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:58:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xIUohOSEadvIpJ/WOpqMNMkz
	cciSx3DWJXtqCnl3QmM=; b=K71Cqt9bnCe6lgWVNi6QvclVAeHrL0tAOqYjnhys
	tVjQiTfR5N/0b5J7II9ITTJRRuoQ0di5n4sYU+LuvQHUXVG0p6rfXHaFviDxL8Cn
	qbBpE20ZimxgPpYspunD8zHSXZj387MSG5NOCfqm6tRU9X81feeQTdEU9lnw5xFr
	5aUZJoIHviRBNfyJvEeoGJpjOi5/VPlnOqWyluxRbpxO4vEvI73N2oZqA+RstK2x
	8v/Op957BPuiuWi2RQSlqnHk7Hx6NKcL8jp22yDWPIzy/COJ6FK7zgTfvveJNEJU
	M7Esc9IJwhHKpimfja2M+D4uy16TZxS/PeoEX60cKTXOWw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bng879vq8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:58:30 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0d43fcb2fso159728825ad.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768319910; x=1768924710; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xIUohOSEadvIpJ/WOpqMNMkzcciSx3DWJXtqCnl3QmM=;
        b=OByXrC+P+HgmCNGVBpbbLVZV+BQo0NFs662IviIn8PdwRm1XVsxTrtilOYkka/b1el
         wB4H8Vl4q3TymwnFXQ9K0bLrCHmvzkJAwUGlbv1q6el2vsffNs4cSwkb61C8XWx8y/DN
         EcYOZhZs9xjSG1W9uyOKjIRvhYHzic5+JNA12Ag+7Czdsik0UgEG0WpNk8+xNAlcbFIP
         wCFrlnMi8EMCJo5+UnXwFlMBz3X1pCCSTZLlSfvwKNQ98fzhhTAbpCR724dNTjHXhbXN
         su8ORiqR1L/EGE7hgqcDAY0jakAoUfWPfg0fdNjnU4pzwDER7p54LV4yAIK2pqVdKQAc
         maLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768319910; x=1768924710;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xIUohOSEadvIpJ/WOpqMNMkzcciSx3DWJXtqCnl3QmM=;
        b=Ht0kgvXComDOdK1+GlgrBB8F/0EtUiZN/mODfx6DkOqNjNZxJPdsaQynJu6phW9vE3
         QQHLTRBbkIBAdzv3LoVc5UMjAaOjwhL4wL5qVeOS9DnGHcj5c0b0gkw5Iq3XQVqgjHS8
         AweIeZaa8TComIB9NRugSKR+0E/If69RBR6Em2e07zfgbAyfpN3DSBfCziFEabZtSI2F
         VEBPv8yKE6bTabmJq9lmmUq62hjNaPslv1TycNUjmNyTrmlffuCUa00G4MRgMuabPzGS
         SD9kgoj6Z1M/OsXUHaN811DsAJO8m0/ZyQa8BYzjKWMNO8+7j/lvA8gGffwFfhCDE7RZ
         tzsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEOW49MubwD3gktQnDIYj9Gd4Vy5umNz8klSsM/QJc8fPZKeADL/mbhlAlNQ5YTnqFNlcJPRN4rg5D@vger.kernel.org
X-Gm-Message-State: AOJu0YzYfZMEjz5gGhfDTQnrWVN4KO+LlfZjHlGlUbSr22T68TCt3w1j
	f+KmBgtmpw0DDMZ9+14lPG9enp/ktlTu8X64kvgOol+N0hYZtPxPdLZl8SjuDmiC0+BypfcnZJq
	wKM94Kht1l5g8sgY1DXZfYJG0Ip7hnkuKspFRft1CCYpZfgjH8fwnVQY8NhIbMQKl
X-Gm-Gg: AY/fxX6YZFLnpvYaklbyhZDMXdBYJ03/bR3TjUeKue2cyJi0FZK3PrQddbamKNGsQdh
	9NrdtCDhU3ndQmX74g9q8W9L9wecIMd74dJdkhqHSu/XES14juOAh+Ud3eFK9ELicSmqm43zJNV
	/p4M8ODMZPsQ2MkmuPrjs6qXIvAGle8UUS+VNDmX/4d8zHpoQsiHo8JXSgv/VzPzMldvysBPhOQ
	cRQ6PPBj8i5l97X2ihJhZceCGD8NyySAZqsngGPN7mehtiAbDW8Mem7Anj+lyV5oEwm9s/B1Kd0
	/VEZ/3daUN74dCnu8O3L7Hqafnk881c4/Ip+1O4Ay/pFttYtzD8+Cvuhdm5bHFU4EgdsoaBIbey
	fA7PkhrpYRwIs2JK6Lx18Esjw8SZNJIzkbucU
X-Received: by 2002:a17:903:2f92:b0:2a0:8be7:e3db with SMTP id d9443c01a7336-2a3ee42890dmr201479805ad.15.1768319909626;
        Tue, 13 Jan 2026 07:58:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFQZddbYx59WFgJ213od7FxJXsg/ppc6HXu9KmcADLaCc2D2xMt3lSu3DkV6boUq1l1ym3MwQ==
X-Received: by 2002:a17:903:2f92:b0:2a0:8be7:e3db with SMTP id d9443c01a7336-2a3ee42890dmr201479445ad.15.1768319908995;
        Tue, 13 Jan 2026 07:58:28 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd4bcdsm202738295ad.101.2026.01.13.07.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 07:58:28 -0800 (PST)
Date: Tue, 13 Jan 2026 21:28:21 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Alexander Koskovich <AKoskovich@pm.me>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        hrishabh.rajput@oss.qualcomm.com,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Add support for Gunyah Watchdog
Message-ID: <20260113155821.7iesxxuf74ncr7ue@hu-mojha-hyd.qualcomm.com>
References: <b105810a-63a8-4d81-9ad8-b0788e2e1431@pm.me>
 <e469548a-8d74-4d3b-9617-2b06f36013e2@oss.qualcomm.com>
 <ABmlNqg6uJXJLkDZo3uaZLdrTCFIjRXOJ68Hrx1MnHHYMnPJ9_g7GW0HGRhZBKv4--_PANfXgTV7h-n7HFC51zKNW6JkmEhpB6_EhFQ27Rw=@pm.me>
 <ee448445-8a6e-40ea-9464-1c2ae52b84cd@oss.qualcomm.com>
 <pquvJnlBgedyrF5RUTrHBUoqCIR7sQMWjwvcpm-5MuqAOxcbLg7i4H2RkuI27usOGZO000h3c90TM_kr6c5UFfViPCzGXX5MNWKFHugevXE=@pm.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <pquvJnlBgedyrF5RUTrHBUoqCIR7sQMWjwvcpm-5MuqAOxcbLg7i4H2RkuI27usOGZO000h3c90TM_kr6c5UFfViPCzGXX5MNWKFHugevXE=@pm.me>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEzMiBTYWx0ZWRfX7/M4CGHTvQX6
 tZj4HcY8TOmxMS/Er4DlJCIEPQ7Z4h+vFN5+pqa35xq0zWSKd7GiANsPvwfBUKwkuM+B0jrY038
 KsCMdH+fKUXbIpUgFbAoojB6UCi2/S/mLwrpHHwVUxmjKTDb5XHbzFY3tRfEVIOwxmNg6aOpH8o
 +ud5jilMo44Tref6mW6FsAaKtgbRTo72tiKmrYD9XM8M6Db44pjTQpaSdiqGP97p7cSVZqNr28Y
 +BLfLi/hogwrlOYp2CnqDY9M/LZmacXxOg8kLPHoHrX51bOLfWKYdjSKsp8LZSyjRtC12s+FPXk
 ecAm74e/t8Id5ORETGc292Rq+ZPHfCTDjcTlFZhpSHnuATA5TeLOL8qgPb71cn58f56XwN0TtU1
 l+hvJ3j1pAwqWou9b5v0Rg/w6psQ5EbeDxDBcL7T91UMn3FgZuup/nLOYybSYP+OB2PzwxlaDZ9
 aRg+NfzkUrbFf2qFeuw==
X-Proofpoint-ORIG-GUID: zkBdLYWcvWidNfAXXxgbrkNyRpgs53An
X-Authority-Analysis: v=2.4 cv=IOEPywvG c=1 sm=1 tr=0 ts=69666ba6 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=k3Xfc6bkAAAA:8 a=EUspDBNiAAAA:8
 a=Jw3FZ3kOnBb64phZBNUA:9 a=CjuIK1q_8ugA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=vs4QOAmQMkZ3NkxV1SYa:22
X-Proofpoint-GUID: zkBdLYWcvWidNfAXXxgbrkNyRpgs53An
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130132

On Tue, Jan 13, 2026 at 03:07:20PM +0000, Alexander Koskovich wrote:
> On Tuesday, January 13th, 2026 at 9:50 AM, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
> 
> > What I had in mind is that with the sources you can track down where
> > the issue comes from with a fair degree of confidence.. if that's a
> > Fairphone-specific issue, maybe you could prettyplease ask these folks
> > for a BL update somewhere down the line
> > 
> > If you still come to a conclusion that the hyp is wrong, we can accept
> > that workaround..
> 
> To clarify the device I'm seeing the issue on is the Nothing Phone 3a which is another milos device.
> 
> Not sure if this affects the FP6 as well but issue was also seen on an 8550 platform, so seems to have the potential to affect anything 8550+ at least:
> https://gitlab.incom.co/cm-ayn/android_kernel_ayn_kernel/-/commit/7ae6565108654991aaac9b73a2221509511e59d3
> 
> It's not that I think hyp is wrong, what I'm guessing is it's a bug in bootloader exposed by a change in hyp dtb (since it doesn't affect blair on same abl tag). If that's the case is it still acceptable to workaround?

Are you trying to modify hyp dtb here ? how ?

blair is very old SoC and may not be running with Gunyah at all.

> 
> For the majority of devices on the market you can't really update bootloader, it's signed by the OEM and sending a support ticket about it probably won't go anywhere since it doesn't affect downstream (since it has the label).
> 
> Thanks,
> Alex

-- 
-Mukesh Ojha

