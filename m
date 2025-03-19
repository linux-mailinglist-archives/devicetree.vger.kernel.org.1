Return-Path: <devicetree+bounces-158923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D89DA6890A
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 11:06:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD85E189AE33
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 10:06:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0912209F32;
	Wed, 19 Mar 2025 10:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k52VKG88"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF241E1DE6
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742378779; cv=none; b=MU2daxmVbL71Tm71lXnDyVri2F3UREc1yQfAprGpw1UX44Ae/ueE3W3pDnKVSxeSohDJI2Ajbx9PT9MuSkD7cVwaduqPfWm6ExXGiYDZIZ5d+kx3r7bPFhEuJEqxi+d7EUMQFRmz42DPPb/157WgadiqhfmFBLn6/zJ777eayOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742378779; c=relaxed/simple;
	bh=4vaJuEvzjXdXBSh6/Y5a0hdOgg6StyNQc0yWT2KFVcY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ei5ZW3xpEQC7fSGPFhjYFIOIcPQv24JyWg9s9vO24IfzIQ8I8OGOyRslnqdwmn6k0qDtXz43ort0rLMnj5zQgl2TGiPKdaYCIkJD1ZYf5hnp77LxiKd1jRZgvQ8zKxaWtD8JkdmUtZwwOx7cR+o8mHV504R8UZaCaBrTLoOsGe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k52VKG88; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ac2bfcd2a70so910692366b.0
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 03:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742378776; x=1742983576; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dkmCrBTQNmjyJ9LfpOQNHoaOW35hiIjttNIV6ARHzg4=;
        b=k52VKG88FULWXgzPiUQvZPZL9mFkBQkFUUiI8JmRafVV03hfGtDyxdEN7F34lWCp6D
         AStue904vYYMUxhMkYvFMDrj8i5IlenM60mu7rM3BHqBLmhzcqmdFMU9RkqKWi2i0qk4
         yUamj2yisqm/1plPGc/R8ZYS7YhDc2FhptyAoDzMuLIQZeAsms/Ruecey0an34c5AM8J
         gMmFzwcKnzV5jk5e8Gzv+/VYswHU2IEQmTC02EIEpVecn0Z1lc9yUkY3OTW2Nbk9HEn4
         iAxqKWUH6ha6OQCO85GkER7My7GApyByPKJ66BuZReLm/+18kndVuotf9ari4y6aYdSB
         ljnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742378776; x=1742983576;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dkmCrBTQNmjyJ9LfpOQNHoaOW35hiIjttNIV6ARHzg4=;
        b=A+1yyX6VXHJBGZcRi0hlWGSv/BhnW8HIqYzv/YV+HJektwE0fiPXgTAVtuVTJVQTRH
         cjxZS3gm6OicUi1mxUz5YbPBo4P2JaH9N645Mei3khNKQrGaGBbDWpl4AROQDuPI81HL
         WNA4OPNvkYca6IigCdZv9T9XPSPw7QA5pa0WdhyDTcdN5fZ5lOIbpWArmlW9dcAgVk9h
         KjQj5vvRrgfrLkxsLxquZNDlahWhRY/9oxjuStYJF6poS4T4fTc6iLy2T6suQLjeNR7q
         BvRxoRHyHg3Z+cREDL0rCY20xClXpAySxo6PViniloWEOkHFhxc1xTGmWmDSXhrHfpvE
         Tftw==
X-Forwarded-Encrypted: i=1; AJvYcCVoWw4xEM1rZgIlQlqN8ozcof+DfcWUYDbGRfRymycCnsgsIzl9Az4TuPXOBBVeAvCSZUO3/t89OpaH@vger.kernel.org
X-Gm-Message-State: AOJu0YwIVGPCPH8Smgw9GCJhRGog4prT2Qw8CDrNJz7Mi+lWuFSTU2vM
	+sBKLLVjfNUvfJm8QBOLzbIqIOF8fTdap8vhh/Kfrw120H3QSLE0Q+hoc3h6M9+EcOX6b0yFaCb
	I
X-Gm-Gg: ASbGnctbaxyWDRs/CryESBJbuRGApsTcxDZ7HAECRR4pn4q8oTfrOpRZjIymP9i9Wsy
	b5G1qJvLa11hPZipwFjf0gmwCiWSw9cRzbfBSggogkKKorVBSryxLWwVMG3rXCJSa8DohvRG8fp
	d5na4NFXPvZv64yYs8qBiHajETWOZgZchCPhHvtbUexU+OP5oAUSxZ4ySnYTfLSWdzTcEorArP0
	yyEpvpClQwgZo42PogjSa1jDUEriHw5kSRrEbPA6wiFIIEEw/qsWNttKqI9ArwmBJyFCp7g/Jz8
	KPZFlxNjKG2UGzPWpcrLnb33A1CLQxxhm3I7vFrvNbpdczz1wxJrmKBI
X-Google-Smtp-Source: AGHT+IFI9YoiP3I0niuCpSgGRcKt34Gyjun9cAeLDdB4irqA7sbsTU6nGtTRm3pLUmCGA+WVV222Cw==
X-Received: by 2002:a17:907:d9f:b0:ac2:9841:3085 with SMTP id a640c23a62f3a-ac3b7dc20a7mr204929866b.30.1742378776366;
        Wed, 19 Mar 2025 03:06:16 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:1274:3124:56cf:f607])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3149d0077sm998578466b.93.2025.03.19.03.06.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 03:06:16 -0700 (PDT)
Date: Wed, 19 Mar 2025 11:06:12 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: bjorn.andersson@oss.qualcomm.com
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100-dell-xps13-9345: Disable
 PM8010
Message-ID: <Z9qXFLmnae86_GT9@linaro.org>
References: <20250318-xps13-no-pm8010-v1-1-c46236d96428@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318-xps13-no-pm8010-v1-1-c46236d96428@oss.qualcomm.com>

On Tue, Mar 18, 2025 at 10:17:02PM -0500, Bjorn Andersson via B4 Relay wrote:
> From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> 
> The Qualcomm X Elite reference design uses the PM8010 PMIC for camera
> use cases, but the Dell XPS13 doesn't. Disable this PMIC to avoid the
> error in the kernel log caused by an attempt to access it during boot.
> 
> Fixes: f5b788d0e8cd ("arm64: dts: qcom: Add support for X1-based Dell XPS 13 9345")
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>

Usually we do the opposite: disable nodes by default that may or may not
be there and enable them where needed. E.g. for the 4 SMB2360 instances
in x1e80100-pmics.dtsi.

I think the same approach would also be preferable here. You shouldn't
get an error in the log just because you didn't go through all of your
DT includes and checked if you really have all of the components listed
there. I think it's okay to enable PMICs that are more or less
guaranteed to be there, but clearly this is not the case for PM8010.

Thanks,
Stephan

