Return-Path: <devicetree+bounces-190735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F840AEC824
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 17:06:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D0341885555
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 15:06:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36EC021C9E4;
	Sat, 28 Jun 2025 15:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pryb2CJD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B0C213EFE3
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 15:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751123158; cv=none; b=hPn1E6EOypSr9Pzz1aY2gKbz2BhztknM162R9X/sB3cBLA6q8yWej3nLbM5x1YUmmdYMQrGws1ZcEBomJk5pb/xCE9cqfqaOnjQfnBdeXpbfSykxSnOUqUlHYVRJRW6oapAtvp5G4P7emYUV+B0qoA2EOt/WEihSv6zZH6u8QdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751123158; c=relaxed/simple;
	bh=AFrWNMz8XFIVdHFp3l6CQGNtCKzmfophqPeOq/6AHIQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tAFjfKzJrMtI+B/rlWYy7bojtf1H93sEdQK86wkN+krMLlU+N/vr8jAgk1Xi25ssq7me/NTokHgK/28XGzhm/n9tP0uuq3gjG8v6T6WabhL91oj07VmCT2eXKmI3t8O5B8oumCyHJVatFuJhE1x7bC0uSOmM0nydXGio3RTUnUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pryb2CJD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55SCTw9R020848
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 15:05:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=REMq7jxI3For+dVSEa7we50s
	2EoA0DEE+aFxW/5IRiY=; b=pryb2CJDTK1TJzSAOAJR8fIFvMN8+qF15WMC6tt7
	ZSO9D6WzFUmsN9zMIxRfFSsn8Afa+TghBy38RWaJ3bwv+IAfhFZCMrEG7e3uFrjt
	qfNEQ+k+f4OKurLck//DJuxf2E8w0xl/hZPhSJqNjsldgnh3s2BBXv3SWpXZxsag
	mLdjWkkAP2ucSPIJyCuTmqWAbz/Hcb79NmtvfAgEsrF6gjwzNkF5J3Ix0/hjxFaT
	rEWZUal3OlobCwre33mK09dxqBrKGqEwpoMqJgXmVcjEGujk9Hpt2qDll3zkpXGp
	NQAJ8p8Xqiff6B7oyWeRTUHjsbhJqcx4GEB9efr5nrma4g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j8fx8swx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 15:05:55 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d09bc05b77so132443285a.1
        for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 08:05:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751123155; x=1751727955;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=REMq7jxI3For+dVSEa7we50s2EoA0DEE+aFxW/5IRiY=;
        b=eyuPbGlSZa7XtRb6ukXvDJan29NV/n/3RGkuCbaYLTpNgpzKbicjNWelimJFyiqadf
         lnhiYM0gbMlqTmbbMnaxchIwKjyBI7KfagU5wzw/4hDo1YAl7nQTIlewBUgWVRysytDd
         /wdEP7L6L6ZLfxQFAzAn4sGClj4BKL59lOvdkN7SANbOJFUw9fp0QvtqzuHklKfp9vRA
         Aza4EeoFlATKk3Sw9y1Rvmvn7EaJO/l09ggJS3b3KHSTOlZFa29QbwNzBydIiazUzjDb
         E0NhDtjuQX02l09aYG2aNYPGQPQxeDeACaaBup1Ky4LGHDpump/6r/sZL33pNPKkYDOU
         2uWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXX6T5NVtSyQwn8dNko/VPebsXDq6XUvl/YX8HOG79es1NEQxT/9jENAbeJhewPuiXyyhlg+yabnj6c@vger.kernel.org
X-Gm-Message-State: AOJu0YyD5BXHQCKivY9sIsO2M3GjQlFtrQWLax2OEDOoFwOgxtsYGWUi
	7aZBtlI4EKWldXARxxmaoLrhlqya10GPLhfpFJe/QpfNnS1bLLEaocjv12rP1OiXQSRnD//KWNh
	1lamtWyYSMeNG1/O0a6lUo+uTIZ804u8bSjMXY3fiFn2q6qBkB6xjwhwfp5zxXaqu
X-Gm-Gg: ASbGncsZNLp2BTOvKWuRFjKsRaZcRsKjbK4ZZYb+TifaDML6U2SbPQbBVVtp8KlKdw2
	CRwGPTFff1nhtsxAih/+BR3YnHXPGZOiDwlWphuZgsbYF0M3o3Aq9rFlyvRuke4/XpsEuH5iJIR
	XmC0CAXWHPuE8BIoxDIhmq9aK9XMXdR5UAIVjS0ZvHaqZo5gYvyCKd7lrlJlwnhPu4qFLcD8LAX
	508HMdpsCahvryZpHdo2DrShkktTvewcU3znNNudehf5JKk2fsygEZ5kJqmiUjwRiJuQJQu2rsv
	rFgOOMc5SniUyVY17k5nfuC2ZyWejgAE+nb6jkkESQe2zBcMIiNLsXXsm5GTceNCoVyJ2HZNz6C
	+2x2NKaDJIgw0/Xlpd7BLxb+uflLzcyO/7MM=
X-Received: by 2002:a05:620a:3195:b0:7d4:2853:9193 with SMTP id af79cd13be357-7d443934b02mr1106291085a.8.1751123154261;
        Sat, 28 Jun 2025 08:05:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFm3pn8s3sBGrZoWRJj6KiXoAZdAGLqhC04uglE5dCO00aoW4M/1u+4v2iGvbuORAxhT3Rd4Q==
X-Received: by 2002:a05:620a:3195:b0:7d4:2853:9193 with SMTP id af79cd13be357-7d443934b02mr1106286585a.8.1751123153829;
        Sat, 28 Jun 2025 08:05:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32cd2ec5e11sm8075381fa.67.2025.06.28.08.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jun 2025 08:05:52 -0700 (PDT)
Date: Sat, 28 Jun 2025 18:05:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
        Steev Klimaszewski <steev@kali.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-efi@vger.kernel.org
Subject: Re: [PATCH v4 1/8] efi: efivars: don't crash in
 efivar_set_variable{,_locked} in r/o case
Message-ID: <h6huo4dohj6y5ne6ehs7ysjnarhtlztyycuztaixpvumvskmjj@x64n7svubc3q>
References: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
 <20250625-more-qseecom-v4-1-aacca9306cee@oss.qualcomm.com>
 <aF0bLtnABcGTi0wM@hovoldconsulting.com>
 <zw5u5c2itmpxq34d22y5wmtr32d4zsmjj5clf77ryeqs5jgd4v@t3wjfyj43yra>
 <aF1CX2uWZ_KaMDVR@hovoldconsulting.com>
 <CAO9ioeWwyxSgG9DNYpW-Z_SU_Scv+4sSBs8UeZnxFz+tOaESEQ@mail.gmail.com>
 <aF6OQqD9V7AYUkwO@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aF6OQqD9V7AYUkwO@hovoldconsulting.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI4MDEyNiBTYWx0ZWRfX5jZwGsiVtUXO
 azdwSIWYD3v5OhepdZf6lFjsuVac2FAJJf8qEnELvlYOsbOV1S2Z40LjW6PC8AKConKcdETwI1m
 QOjOI8d8ZNd6B7qiKJSFvB3hobvE1xDZhUmDhBHBe7EDN4B8OYUAObfjVu87PgQT31BNO3sm9jU
 ui1qFl/A5Vo/ms7/hLDyT9jLsKCfhduQF4DoLYKuHySDPvc/mV2aVc0i49n9AF3V5rnBYF/zxQa
 yK8YycdLvTu44ov/AGlsofdlqlqh9ErHDc+whSouclZLbWQ4Nq6SQV3lGy6nSIPdwf7GwUzWu8L
 O9yRhxYYoFlODOWHUBdN6bjSvS1dpYdlHhCeaFUnOh/p66IiKcobmBtt+6aZMd845wVoL2mNZR2
 yZID31fRYnb+/YMYh/umR7V+EE0iJtM7RLkV2woJgQjw4grhe/D//ZG8Mlcs1/OkgrDOwT11
X-Proofpoint-GUID: mLK92e4vRIIdN80ShMMCT5ZjHwRKnj_A
X-Proofpoint-ORIG-GUID: mLK92e4vRIIdN80ShMMCT5ZjHwRKnj_A
X-Authority-Analysis: v=2.4 cv=TqPmhCXh c=1 sm=1 tr=0 ts=686004d3 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=dxwQtu9T7pfLJM4xsnMA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 mlxlogscore=999 suspectscore=0 adultscore=0
 phishscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506280126

On Fri, Jun 27, 2025 at 02:27:46PM +0200, Johan Hovold wrote:
> On Thu, Jun 26, 2025 at 03:54:11PM +0300, Dmitry Baryshkov wrote:
> > On Thu, 26 Jun 2025 at 15:51, Johan Hovold <johan@kernel.org> wrote:
> > >
> > > On Thu, Jun 26, 2025 at 02:03:44PM +0300, Dmitry Baryshkov wrote:
> > > > On Thu, Jun 26, 2025 at 12:04:30PM +0200, Johan Hovold wrote:
> > > > > On Wed, Jun 25, 2025 at 01:53:20AM +0300, Dmitry Baryshkov wrote:
> > > > > > If efivar implementation doesn't provide write support, then calling
> > > > > > efivar_set_variable() (e.g. when PM8xxx RTC driver tries to update the
> > > > > > RTC offset) will crash the system. Prevent that by checking that
> > > > > > set_variable callback is actually provided and fail with an
> > > > > > EFI_WRITE_PROTECTED if it is not.
> > > > > >
> > > > > > Fixes: 472831d4c4b2 ("efi: vars: Add thin wrapper around EFI get/set variable interface")
> > > > >
> > > > > I don't think a fixes tag is warranted here as it currently appears to
> > > > > be expected that the callers check if setvar is supported before calling
> > > > > this helper (e.g. by calling efivar_supports_writes() as efivarfs does).
> > > >
> > > > It is not documented as such. So, I think, we'd better not crash the
> > > > callers.
> > >
> > > You need to look at the backstory to determine that before jumping to
> > > conclusions (e.g. start by looking at f88814cc2578 ("efi/efivars: Expose
> > > RT service availability via efivars abstraction")).
> > 
> > _documented_. I'll update documentation for efivar_set_variable() in
> > the next iteration and add a check to the RTC driver. However I still
> > think that this patch is valid.
> 
> Still depends on *how* we want to address this.

I'd prefer to address it in both places.

> > > > > So should perhaps be fixed in the RTC driver if we agree that supporting
> > > > > read-only offsets is indeed something we want.
> > > > >
> > > > > Are there any other current user that may possibly benefit from
> > > > > something like this?
> > > >
> > > > efi-pstore comes to my mind.
> > >
> > > No, that driver is also disabled when efivar_supports_writes() returns
> > > false.
> > 
> > Good.
> 
> Ok, so then there are no current drivers that will benefit from your
> change, but you may (or may not) need it if you enable RO efivars on
> this particular platform. That is, this patch is not actually fixing
> anything that is broken currently.

I'd leave that to a discretion of EFI / EFI vars maintainers. RTC driver
definitely is broken in its current state.

-- 
With best wishes
Dmitry

