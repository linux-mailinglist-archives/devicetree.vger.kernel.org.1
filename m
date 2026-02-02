Return-Path: <devicetree+bounces-261775-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKGJAb2FgGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261775-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 12:08:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC04CB7E3
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 12:08:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B40BC300CC3C
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 11:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F357B35E53B;
	Mon,  2 Feb 2026 11:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ncC1Dr6k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8962C35DD02
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 11:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770030254; cv=none; b=QMKgCILmGk37icjLn0k93PbYlvTFRLEljIJD0nHpYvFGZvRmA1EgEJ+GG6sScD8pc707AsToOpCvsjic8g8EdiT2dOB/H+MYHOFcSkCx4Dmu/A4ZDAoYBGMrB6ApXQXTfN3nRMBwyGkedDQussr7oGVKdcODFMlnIHhSDVCT4fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770030254; c=relaxed/simple;
	bh=Loys3V60w4/i089Z65xNUXkI9S+P9TwJDpkBw4scIF8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S0JyRAS+elkf2d9YcgQmq6SPMiYiHxuMqnJ+kUyJl271lkpKMXHkpUJiQjCMCwr1iIqtChMsfPWgV39AVU9YERujQAgPrx8FFI2hD5q60vFHTopK4FAPMaYRsh9ER2Dums3z8OZepqle2oqXDZONrvRDX+60ZbkvN9N09iwE2RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ncC1Dr6k; arc=none smtp.client-ip=74.125.82.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-2b72e49776eso7983844eec.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 03:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770030253; x=1770635053; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XpnvG6a+X8idDiHgSW6vo1XR9f+nMb7ZNZHPlBThMwg=;
        b=ncC1Dr6kZdAZXOJFQGyUyj8n19L42Nfze2MUVNAwlVnCcpJXzQ9EkkbxOkxzbG7jcX
         oshktc2x1UuniOOMt1O2ScGJOeq0z+YYfmbsfkWvQYvcMzybhHbYUXcX1bpaAtdf611l
         hae1guQ09kLAV8BRnVbhahMJwNHU777HrjLNjGBzq9g8K7k6wawVOE9+r37rkxcHWgE0
         TYRQvBLa6McGqUEP8bp20Icgk3QH1Xf091CSZ6g3aQllRfKstCaFhBfaymDcrrHQrlVf
         3+2ck2qLMx0JUtwrqWWO8NZ1D4BS4f+KFT7+iKh+Te9OSGdJegypDN5uMb2DXT2YwbFL
         46jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770030253; x=1770635053;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XpnvG6a+X8idDiHgSW6vo1XR9f+nMb7ZNZHPlBThMwg=;
        b=crF5tvaD6xca8r7a53nO3RvqMz0CMN84ZFPhyG1pcMBR6Gm7ozY1w2TKUr/J/SSD8x
         0vFWYlPp/F4itJbeWaYAj8F9Wg274vd8j2x/iV3zZ+oBwdF1cE8Gqc/wFBIpQSGS3MiJ
         ZFXiMuW9gCxIaxBE/H0XQZE6R9oFgwD8zUriy2vQqv5i1NffeGmMYiMRsI+D/8G2aIDN
         ovRlrpMf340o2ncYSwWxU3+IfwyrAOXWb1PCdqlUH3zTA2K7Ew1j9NiBzATYEsqDUWpT
         oS15ZBKNZW9cUZRC3FLCg39PjzZPIL6Ip5JnLDdCcPInezGWPv31E9H+iOi93DnKTn/9
         iP/A==
X-Forwarded-Encrypted: i=1; AJvYcCWfPoLkO830dpDLQMk1KUq3i2Or3vbFQojUpjE2YSk8cXKAfKncHdtA8WFsSWmhChiuB6runxVK2vxv@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2Hu7UmIVoA3GPEj/J5L2P/+bgfR6unSE6ZcejEUqFXv3khpV5
	+P2/qHVWSnffxGA0wm8im/uHPb28zUkUNKX+uUWI5B4ehebZx02jyTBI
X-Gm-Gg: AZuq6aK14dWgPgRhzx6BYRsycNFkvYQ6djM22WyBVoC/VHGTIdLAEdzHNq2K7oF7Vba
	s/cp80n8AJojD+yiXYJ5AVSD1yqJTv8SuBoi81/0NstdXLvRvMsmXWerZgVa8aghr4seOX4+DjO
	QIWybHflKMokJsoDp/8jqNhzZADw8tYPXkQ3MLpwSbBpEP2CVZfn/Bgv+pExgLgSK/wqxWJsH9J
	43wP02ue736z8sgY3JxzDmWzUuME0gpBZ/gwOckGwzD/IDuvkmEbAU/pQuEDWYB+hkcEDM/HtfQ
	u6iG4hAcQWqagJ97hCme8sMw74wjXlS2qnQZwnnZzo965kQQwfkbsROV48WNzqkdbgpEZOIVPtm
	KwaX7r74kpvNRgD8D3RzGhumoGzId2m5ruQoJ/5APzx9mtPKgkRTNsfMVV8yOZKobenbjuJsLuB
	I+NxYtkVeC4Sw5Z4z3fRMJ4Y4Cd9mHSh6B6nwAF7GEx/mbbvXdSzpGn2FpFwRBgNU=
X-Received: by 2002:a05:7301:2f99:b0:2b7:c5d7:84bf with SMTP id 5a478bee46e88-2b7c86756ccmr5986307eec.19.1770030251139;
        Mon, 02 Feb 2026 03:04:11 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:2956:5cef:ff00:c68d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a1add4c2sm19657728eec.27.2026.02.02.03.04.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 03:04:10 -0800 (PST)
Date: Mon, 2 Feb 2026 03:04:07 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Luca Weiss <luca.weiss@fairphone.com>, 
	Griffin Kroah-Hartman <griffin.kroah@fairphone.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 2/3] Input: aw86938 - add driver for Awinic AW86938
Message-ID: <aYCCv6nI2QkvD8rb@google.com>
References: <20260128-aw86938-driver-v2-0-b51ee086aaf5@fairphone.com>
 <20260128-aw86938-driver-v2-2-b51ee086aaf5@fairphone.com>
 <aX6whqw7XyaKMd9m@google.com>
 <472d7db3-db34-4966-aa17-588e1153ba12@oss.qualcomm.com>
 <DG4EAYDXMGQS.2MKAJKDFQCFEG@fairphone.com>
 <34fa533c-b9ab-4025-b9ad-4041837e790c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <34fa533c-b9ab-4025-b9ad-4041837e790c@oss.qualcomm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261775-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5FC04CB7E3
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 11:19:36AM +0100, Konrad Dybcio wrote:
> On 2/2/26 11:14 AM, Luca Weiss wrote:
> > Hi Konrad,
> > 
> > On Mon Feb 2, 2026 at 11:12 AM CET, Konrad Dybcio wrote:
> >> On 2/1/26 2:49 AM, Dmitry Torokhov wrote:
> >>> Hi Griffin,
> >>>
> >>> On Wed, Jan 28, 2026 at 04:51:14PM +0100, Griffin Kroah-Hartman wrote:
> >>>> @@ -717,9 +746,19 @@ static int aw86927_detect(struct aw86927_data *haptics)
> >>>>  
> >>>>  	chip_id = be16_to_cpu(read_buf);
> >>>>  
> >>>> -	if (chip_id != AW86927_CHIPID) {
> >>>> -		dev_err(haptics->dev, "Unexpected CHIPID value 0x%x\n", chip_id);
> >>>> -		return -ENODEV;
> >>>> +	switch (haptics->model) {
> >>>> +	case AW86927:
> >>>> +		if (chip_id != AW86927_CHIPID) {
> >>>> +			dev_err(haptics->dev, "Unexpected CHIPID value 0x%x\n", chip_id);
> >>>> +			return -ENODEV;
> >>>> +		}
> >>>
> >>> If we are able to query chip ID why do we need to have separate
> >>> compatibles? I would define chip data structure with differences between
> >>> variants and assign and use it instead of having separate compatible.
> >>
> >> dt-bindings guidelines explicitly call for this, a chipid comparison
> >> then works as a safety net
> > 
> > Are you saying, that
> > 
> > 1. we should enforce dt-bindings == CHIP_ID (what's currently done)
> 
> This

No. If there is a compatible chip with different ID (for whatever reason
- maybe there is additional functionality that either board does not
need or the driver does not implement) we absolutely should not refuse
to bind the driver.

Hint: this thing is called _compatible_ for a reason.

> 
> > 
> > or
> > 
> > 2. we should have both compatibles with no handling based on compatible,
> >    but only use CHIP_ID at runtime to change behavior
> 
> This is spaghetti

I really do not understand the aversion of DT maintainers to generic
compatibles. We see this in I2C HID where we keep adding compatibles
for what could be described via device properties.

Thanks.

-- 
Dmitry

