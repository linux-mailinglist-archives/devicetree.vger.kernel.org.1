Return-Path: <devicetree+bounces-247076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7470BCC3E56
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 16:23:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E042A30ACAF2
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC1343557F9;
	Tue, 16 Dec 2025 15:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ak6pimUM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC45F3557EB
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 15:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765897979; cv=none; b=oJvlRk26RZIBPQVLiPvsPXfRJK1vSr59IxhWOEZupZickHJngV9MvqZWFJ80CYtyLBLaMKVZAvesPOdceEx1lVGvymMyaEEptpOs+KxFRhQqXE+7vXLsjIdEPEqvohOoB3ECw+ZSVuUH7pWOdU7b3FiQhEPpB+0YPTj6AP6WaEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765897979; c=relaxed/simple;
	bh=otRnitXgK3YK8QOOnOlDhlnw9uTpljPxLSfkYiE4/jA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=afFNsVyxlr30dJoHveXrqGAZxWJl0pfeHtdrO8JUTFEtaV+Htr6RuewL+uvjawhnF615UpRWugQX8gyGf+7Atqx1G+0NKMGDm5eIA/+H93vwR9YmQXAteDaxn6Akx+uB4dILQxH+I9HaaqE98X08KL/AobFijPnBlc0anwHfPls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ak6pimUM; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47a80d4a065so29525715e9.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 07:12:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1765897976; x=1766502776; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2RaB9SM+pvwUf1QmqN2DN92hZRXQJ2LlXiPVs66C+PM=;
        b=ak6pimUMaCZZ/eH5zmilk5fKWiWmW54oMRx2jPSJVi1CVmJPC98gQhTksBJFW+6nHP
         DLE/wPy/UVd/TBJCpnXSaDfkC28opZO1OGWlzr6THu7BZffJesytfKxKrfaEWWQOvJdB
         Ro9a3MGnc9Th9Aofq0LHrc4iXCjQxD7lXbdtME75auAIp06AwNFJk17U4gcy4sEeP6BZ
         iRvSkXX1cwVC/goq2Jw4EZ9m/Ie8IaH/U2IsFtT/U51CKl+hcFy8uf0/8tp07WkrieUV
         1JAlv/ia8ggNysCdeLTYF/v1MLare0gRW8hYTq3ZcLxz/6Or+4EXMTge1Q2fGGhNLp8K
         cYFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765897976; x=1766502776;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2RaB9SM+pvwUf1QmqN2DN92hZRXQJ2LlXiPVs66C+PM=;
        b=hmrGlV3wOyQ/n8T7uwfdf4Rygp2KSaI7xv64QLOVeQVPu79LL+J25ZkQNPN7QsYiuB
         girV0pSpWmm+rGRBbZG92Jcy5T9OSGcyHvb3Nrn8gltDM9jq2UDewJ0/KcGEExmmxvYZ
         rsWXcxKkB5UEyYJ0h5ZHgTFW5UamQL1DIL4MbdnUOq+8Yp25/wUvrOLvVAQ2L7H3yps/
         fAfQTFbDVLuN0JztpEapVhV8MsLn91m1wc+rUPuLCbUjyeIGpgQzrcj6Vl4ibWWWBbZF
         +zXH6zNVZzV6KN103oZ+UX2ZDgBhITHnjSPIT65yWoJt4YsuMUgrinPJwB4YGDP4D0xG
         zpug==
X-Forwarded-Encrypted: i=1; AJvYcCVOVjGCokePShgBrXplfT0d2qz/8vHoj5QDzCLwL1MPcxrgSJV4594S7Xm+HrPnYN2w7N4VGBH5lYtn@vger.kernel.org
X-Gm-Message-State: AOJu0YzLg6q8q5AAHrNVOqQSDHrQHCXOghmAZa9nnDJM1kkidZ+oGGOB
	Ucyr1O3qR6T6EtrraL4crCBPe2jcukZtjlkpX51/4MhxWjZNSEncke6Al5EgDyl2C/0=
X-Gm-Gg: AY/fxX6qHTsF/IFEOC089LB65NWW4R39f+gv2c9R28NfzO/CtWOimMv34s/7dUJ7Tlk
	bi0OAPV1brmSHadmgMY9lGhLdS0S9ptiT/sQlfVaBCmOOULWnZwuvt3RM6DZuSLwGEO6pFNdMTO
	HWyejLaXhUuUsoDgYegn7bT+WNW/bM1RYbuOEQN35W/khWtZsBdFr1/D+w5RS9vaZ0ASg2OjgxL
	RMNZJVR9Wd27YUjPIyGs2+FgnZfIYNOtjfVsnB5ln4gVG8kVAqe0VK8xLvZhFU7OxecT8LGF8kb
	Wxd8JsScy4TbKsvYWu70kIP30Ls+MFd+fCV5lXPqZ7FeuAb4F9pDtkGyW7exPNuVBTWjUSEItAv
	Kcypwe5osehjW2ojCb1XiNnEbCSt8vlaCkxCe2AytsKIkjPsRRaPWwyAITRKHeDePw17L9eIWzB
	TpjxhKij0bdcbhSA==
X-Google-Smtp-Source: AGHT+IFg1h+oSthyGc4tPORkNrPPpnVeUr6FNMPfEJgnXBupogksrkrfKGsIU7DtuK9+emJLDR1CpQ==
X-Received: by 2002:a05:600c:608d:b0:46e:49fb:4776 with SMTP id 5b1f17b1804b1-47a8f8c18d1mr142495795e9.11.1765897975942;
        Tue, 16 Dec 2025 07:12:55 -0800 (PST)
Received: from pathway.suse.cz ([176.114.240.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47bd90b81e6sm12034075e9.3.2025.12.16.07.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 07:12:55 -0800 (PST)
Date: Tue, 16 Dec 2025 16:12:52 +0100
From: Petr Mladek <pmladek@suse.com>
To: Eugen Hristev <eugen.hristev@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org, tglx@linutronix.de, andersson@kernel.org,
	rdunlap@infradead.org, corbet@lwn.net, david@redhat.com,
	mhocko@suse.com, tudor.ambarus@linaro.org,
	mukesh.ojha@oss.qualcomm.com, linux-arm-kernel@lists.infradead.org,
	linux-hardening@vger.kernel.org, jonechou@google.com,
	rostedt@goodmis.org, linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
	linux-arch@vger.kernel.org, tony.luck@intel.com, kees@kernel.org
Subject: Re: [PATCH 21/26] printk: Register information into meminspect
Message-ID: <aUF29MLUj3YRh4v_@pathway.suse.cz>
References: <20251119154427.1033475-1-eugen.hristev@linaro.org>
 <20251119154427.1033475-22-eugen.hristev@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251119154427.1033475-22-eugen.hristev@linaro.org>

On Wed 2025-11-19 17:44:22, Eugen Hristev wrote:
> Annotate vital static information into meminspect:
>  - prb_descs
>  - prb_infos
>  - prb
>  - prb_data
>  - printk_rb_static
>  - printk_rb_dynamic
> 
> Information on these variables is stored into inspection table.
> 
> Register dynamic information into meminspect:
>  - new_descs
>  - new_infos
>  - new_log_buf
> This information is being allocated as a memblock, so call
> memblock_mark_inspect to mark the block accordingly.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>

I haven't tested this. But it looks reasonable from my POV.
I assume that the output from the "log" command was from your
synthetic test so that "crash" was even able to print the messages.

Feel free to use:

Reviewed-by: Petr Mladek <pmladek@suse.com>

Best Regards,
Petr

PS: I haven't attended Plumbers conference this year so
    I do not know what is the current state of this project.
    

