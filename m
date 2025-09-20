Return-Path: <devicetree+bounces-219457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19948B8B76F
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 00:22:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8FC03B6C66
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 22:22:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 400302D24AD;
	Fri, 19 Sep 2025 22:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="JGtH06Rm"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B922857D2
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 22:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758320557; cv=none; b=X2aLtKnGYeyB0qHqy23qKzI+/6iudGzh9vAgXtskAAlWW+O4hsZiPhrl2fjp4EblkEfZjaMr6vAIbGg81juCUicAqxkgby203sxrW9Xme+PPZjCZy9wrzMvwLIikxW5A/Eo6loPA1XZ7DPidZ6Ids4LVOB7BW6Y89wGXCW/CyVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758320557; c=relaxed/simple;
	bh=nYGGBD9CXGQtXqvwR9vlAEwW8zMQIP2X0qfHIuQV2jQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jVZJwmYlA/lAWt7zBEV4DTih8Mkv4NxUXzFxh/0E6Atw+Be0zYbT4OrzN5KekhKeG5TfS5VMALOoZmmyFwJbpmjbb7DMdIIDnJ3ESeunpC35INPttMh9KF114aI8PaMPws0d6zYhO6pbFALExcxr4x7tBA5Dl2igHSwq1pt7LV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=JGtH06Rm; arc=none smtp.client-ip=91.218.175.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Message-ID: <4a0bb60b-e3f0-4fce-8622-02ebeb374210@postmarketos.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1758320543;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Qdn6JbPiCcC2JrSnnuBVjmN1kD2fzIMN5v5TkpaM+WM=;
	b=JGtH06RmUhHwJPMIDikVH2yW3nlzgZcEJKmu5O2KIbue4QO2WUp7vWx7Hum10YDP3rRApn
	s7jSYbAoZwjP7jtRD91W8xV9lw5gmFM0A0qKmw9sprNxbXbDcBhBJiy6CUqfkDnMbr6Bfn
	rEpGZofbZ8g3bZFXze7Q34wh4u5fa/7SwNZgOfmrzNS7UtdJ95OcyogBALmxG9DWNUXEN3
	TJ9SNmirL6z3/8xKS4fLAWyUkBvwb46DcycD6s02U8p6Hm0ulyEDLR2t239ZZSbMCzL8FS
	gX2l9XQCmi+Tc6Ong+4sOm1MLonqK5nWX+lmp6yRmJxqnqzgezQj2yqDDknTAQ==
Date: Fri, 19 Sep 2025 15:22:16 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2 0/3] Add LG SW49410 Panel Driver
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, David Heidelberg <david@ixit.cz>,
 phone-devel@vger.kernel.org, Amir Dahan <system64fumo@protonmail.com>
References: <20250915-judyln-panel-v2-0-01ab2199fea5@postmarketos.org>
 <272d8cd6-e151-4bab-b8fb-438182a575be@linaro.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Paul Sajna <sajattack@postmarketos.org>
In-Reply-To: <272d8cd6-e151-4bab-b8fb-438182a575be@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

On 9/19/25 7:45 AM, Neil Armstrong wrote:
> This patch hasn't been reviewed, and anyway the subject is wrong, it 
> should start with MAINTAINERS:
> please fix ans send a v3.
> 
> Thanks,
> Neil
Is there a rule that a driver must be reviewed before getting 
MAINTAINERS? I'm a little bit confused by your message.

On another subject, I'm testing the touchscreen, and think
I may need to add more power management to this driver in
order for it to function correctly. So it might take longer
than expected for v3 to be ready.

I'm pretty new to contributing to the mailing list and probably
sent this a bit prematurely. Apologies.

