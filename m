Return-Path: <devicetree+bounces-150668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9E2A4337A
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 04:17:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B22941892B70
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 03:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 441D624290C;
	Tue, 25 Feb 2025 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fOtDDi6y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB67024166A
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 03:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740453453; cv=none; b=rEoTcyEao0rx2Fc/2zL7qDUlpIIL9RG6DtTSe7I+d0UeZ3sOA5S4NKXJJ3ARuwZyf/Qq5ULcBjSZYLkiny6mIZVINQwBp5QW+ti0Ix0oMSsd2zVxVgJ6oYvWk9PJ4+HZduT1SMecFgVOkPlJ3QwT2/UQUQgfWFjWuiW5orzZUgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740453453; c=relaxed/simple;
	bh=xdMJFduuFVdDfRcYXmcf+iepoeRKpVZBuh6VAxiDRjE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FAukedkzJHju8lQTNxvQYcwL0lL3CG9SDMgvXPFJzS3haf1/WJfLiI1ANWecOoY9JZ7G+i5l+e034/zLKiQPVXj6d2zFFgZhzr3sJHVBfjegAN8s3hy2hsmv2EPQM8fe4SMqEM/AxEO8DP6UM327r1PN7VT13xaXfSS1CQP4SJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fOtDDi6y; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5461cb12e39so4928431e87.2
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 19:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740453449; x=1741058249; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ErwZgVdj5p6xF2muLcoQXQqaXweqPuzZ5KXiqDnh9+o=;
        b=fOtDDi6ymek7vh1moImKKs11EnM2p7whvl8I55xKpBuyyTCKOtx7c/XCa7b4vI8AGA
         jMy4/Trhqi8vNbUcCIOgClzHFlCpEQshizFuAx5Vi5KKRgF60cO0h8VI68J8MkVFCqs1
         Y5a4KPEoTAMjoMuQu1ZgsdvrZKFYAUWrQ6hPecP+KjVWyo7TsyZC8+ojtO6gi8v83wEl
         /TFOa4CW00tzTQ7FhSu5eTUhqqHvxJVrGIuau8R3GR4FMjbTpovijbYOIigccgNAH7Ep
         c/1BCqVOP2BTu9wKt3j/APpjzQAEJM5JFnVXX2msJkNA+9ECT/QdlCR70wK7/DROv1C6
         lgXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740453449; x=1741058249;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ErwZgVdj5p6xF2muLcoQXQqaXweqPuzZ5KXiqDnh9+o=;
        b=fWux9gbVG1P5SwGVpg738WS+oNtb14YwrTlfgev8qFnosO6QqkpLq2KZpX5Dl2wd3O
         NKXVmjLstmvI6FdB4uabtRiw9ARUPtZL9G6DY7GcnXzJhm7c710j194M9aD1RtbNwdVA
         KIZwoeSrY7SyMlmQ+DhNSDUvjjjHErZnpxZ7B1PzU8opeM7fGDsVHWHLDCKt9xtrRL27
         +g8eJmcxqRIud/N480lON0fPZO4nBBSrtr6guhEFl/RWXIGkm4wViRZjS4Jy7RGfuBcF
         zCD8+OUHbiE49K5yLj/wPPG65hn7x0+RQjdL0EIXTm7CKxRtMwIz4mXA5T3uvCGHPw/b
         oaTw==
X-Forwarded-Encrypted: i=1; AJvYcCXXKGCARM3Mf1gk4hwN9ikyfundOj9iDdufld4643yUw3xkKUbjasSpa8CAHOED6LSXuKZxJut8aqRo@vger.kernel.org
X-Gm-Message-State: AOJu0YzdsU0zc0x9sitLDtvu83hr+XIwVXrZXq8anVxNg+Pl13TFlFdm
	0BggMLBoiLj7mWR7VK6+fWDYHiB7AfoC2zXSN1ZjMzUbZ05n/5g694nzebT3wI8=
X-Gm-Gg: ASbGncvZPYdJQE+ySKuPWZZKn3XDGkgP4hHmRttZCArSbzai6NQFt4Zqr7jZUX5TxoQ
	qpfXDN1aAe+7sNf3f5HweazFSOrcU9gM/eS7J/y4Sj0QYTybo3hAcyPYyHSTQSkTE0PZ95Wfvpy
	50vma3mFIEZcrnmrEeu47TgMHBasJccsLpkvP/wiCvErO+Z6igCq+RY00PlbKKS5oN06ca9/3d/
	XZL7jgpH8F7t4i+MgAxeje+oftn6j8zJ4TVCbNa8WG84W4mvOwSawjMt3BaIHazVNEeTdKfO4GB
	UId2eobLyHGpgEUlcL9MK7oj4KS5msrZCRPYdkAGUtsybfvEPgYyBB6GpWZNW9IhL5/PLzPoTZM
	JF042EQ==
X-Google-Smtp-Source: AGHT+IGNyDqvJxVxqP5uUjlG9LFxo0ubNdF4Qj+xzKe0poWIckWW0gNZNqJemNsdxd4SujSyFUqBGQ==
X-Received: by 2002:a05:6512:3dab:b0:545:285e:7777 with SMTP id 2adb3069b0e04-54838f4cc88mr6329025e87.39.1740453448575;
        Mon, 24 Feb 2025 19:17:28 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514b78dfsm62244e87.54.2025.02.24.19.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 19:17:27 -0800 (PST)
Date: Tue, 25 Feb 2025 05:17:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sdm632-fairphone-fp3: Add
 firmware-name for adsp & wcnss
Message-ID: <6pqjzeb6xxozxmfeowmxz7pa2hldiet4mibllpsvtqheijjxl3@j7xsmlbtjfxb>
References: <20250222-fp3-remoteprocs-firmware-v1-0-237ed21c334a@lucaweiss.eu>
 <20250222-fp3-remoteprocs-firmware-v1-3-237ed21c334a@lucaweiss.eu>
 <w4l5drhu6exq4jb7x2pisqtkz5ylare7ashsmjjqomv3yetjwj@z3wapq4rkk3u>
 <6d1a95a1-0b84-4bc5-9cb0-3cc514d292a6@oss.qualcomm.com>
 <82a9d623-2033-4d7f-93b8-67007b46be79@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <82a9d623-2033-4d7f-93b8-67007b46be79@lucaweiss.eu>

On Mon, Feb 24, 2025 at 09:43:48PM +0100, Luca Weiss wrote:
> On 24-02-2025 9:27 p.m., Konrad Dybcio wrote:
> > On 24.02.2025 1:17 AM, Dmitry Baryshkov wrote:
> > > On Sat, Feb 22, 2025 at 02:00:49PM +0100, Luca Weiss wrote:
> > > > Set the paths where the device-specific firmware can be found for this
> > > > device.
> > > > 
> > > > Fairphone 3 was shipped with secure-boot off so any testkey-signed
> > > > firmware is accepted.
> > > > 
> > > > Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> > > > ---
> > > >   arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts | 7 +++++++
> > > >   1 file changed, 7 insertions(+)
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts b/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts
> > > > index 08ffe77d762c3a97f470efbfb5064282fe2090da..5611209dbfa41d7834af7903535ed3e05604ba63 100644
> > > > --- a/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts
> > > > +++ b/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts
> > > > @@ -82,6 +82,8 @@ nfc@28 {
> > > >   };
> > > >   &lpass {
> > > > +	firmware-name = "qcom/msm8953/fairphone/fp3/adsp.mbn";
> > > 
> > > If any firmware is okay, wouldn't it be better to use
> > > "qcom/msm8953/foo.mbn" ? This way if we get any of the firmware (yeah,
> > > I'm a dreamer), then FB3 can pick it up.
> > 
> > No, the fw may have board/wiring differences encoded inside it
> 
> Second that, while I don't have access to the AMSS sources for this device,
> I'm sure there's at least some board-specific config in these images, and
> I'd rather not boot up some ADSP or modem firmware compiled for some
> Dragonboard or equivalent.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

