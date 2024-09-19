Return-Path: <devicetree+bounces-103834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6B397C675
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 10:59:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EDE611F26718
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 08:59:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44823199243;
	Thu, 19 Sep 2024 08:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="wSOpN+V8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 900E11991C9
	for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 08:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726736362; cv=none; b=gPjhRc7+/j3LjqxGqT3bwJKBDIyRcrepkr94d8UFVfMpbb00OUxZ7bf0bIzOwFC004Kzu2BzP4Cnpx9By9ZiONJjf5xhLQnEJ5UFG5ouwO62kLhizUjnODI0fUYtlhUbJPthAoZLP9l9ySGuL4Jey4Xrrs8iVkPBdhks7Qoq+Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726736362; c=relaxed/simple;
	bh=gELVqvyqcJInyr8E7hFzpzkNi+tcnEM+7zPPHqXS8a4=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eRy32Onvwf6A2xt3BhLvVpR6PozEeT3ECLyrDiXs4XtlAwUspzRWLTuLuokkvC+CfHdtQsLhi9gl8XiJa4sr4vxRtplHyOg43Ci+DXvnawCF7nLXFYhDKYDS3i83hCPIJplBrsUaX705b6nq7IfMUWKweB5sOU2+nHoKMzEOu80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=wSOpN+V8; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-718d8d6af8fso416677b3a.3
        for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 01:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1726736360; x=1727341160; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=gELVqvyqcJInyr8E7hFzpzkNi+tcnEM+7zPPHqXS8a4=;
        b=wSOpN+V8gFi0Mpkzw8xCb9Tl4fqma9+DcfEjcswbq9RGnuj6HGZbqLYYuBZBpL3wnb
         mP2GH1M9z908073TNINTI3TGxKDRbQLU63ju35/sWymUoCXeZokQVjWRcqrAmBvGyrBU
         93rN32wfNi71qrJMQqAtt0hx248gV4us+zofHmJbvbvLUGxwuZcJ8Ye9vIwaxN2anHaq
         qm8V9zVPaYQOV5yRj5Ir34mzIxpO3GzxNZf6bHjkibph+WeTXSYNyIVDzyL9Rbd0coNi
         Xn6rOSn/AWKm0OFfENgVSQ1xWNEqtIywmWP4+oI8GvMUDBtOrW/SiToQkpAadwmhZqpJ
         y5jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726736360; x=1727341160;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gELVqvyqcJInyr8E7hFzpzkNi+tcnEM+7zPPHqXS8a4=;
        b=SWSunykgZBk0BFRVfcPP+d6f2kpPDzZcDXpxNSu/u/8D/j+uv+K3/eUDN+44rsVbVG
         f8xXHMIPDVIeJ5LwEG0yRL+QbOSvnDWE1sNOcHDdq6R5gbXKys3zBC7lne+Zf+xTgCj5
         EkH+8eS7jeovIgxHXZvzVkAqUYeidJtYv2w8us1e8wNC262JvlF63MzcJia3CW0CGVHj
         Zbdj/3EIQqVjchhko5f2z7YLi3gniWzbP49qFhJ6OMrJ7VolswU7FfMLMhnYVEBi/xtb
         pGj0TTuSyIjSfc8Pvhnn7+UW5V0kxdn/H9frkciEWDbWTLnL+4vqYFeZiN5aO+hQfDVI
         FbmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoLUQdQndT9LWigHQYrFIjzc6mGcvIUpToUStx85wgDEyrmjTkc+UixaNC/WIP/xhNST+NuSmI7B3N@vger.kernel.org
X-Gm-Message-State: AOJu0YzgqSFndGGljfIQ9WBGmfJzzPXBXVosIudzoAk8UDZihqCQoGpm
	E3/lTI+U5xNxa9qV9z/M4u1bIMpT9Ls90ME8Qu8EJlRO8GEuP9xJ1TyRZ2Gn6gsDEA99jt14Ctc
	wS68ekVHsEw1qWT2CvQmXB3LXf8OHNm5BH0X7bw==
X-Google-Smtp-Source: AGHT+IGvZKhZ+sgK1EVS1v43hs165nAjaXCVBqA4ql8mlkaKawbV4Lhi2ui4b5YR+NQKc/pd5URgnIZnstCpvwceHIs=
X-Received: by 2002:a05:6a00:c88:b0:717:fd98:4a6 with SMTP id
 d2e1a72fcca58-71926082587mr37728842b3a.11.1726736359963; Thu, 19 Sep 2024
 01:59:19 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 19 Sep 2024 03:59:17 -0500
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <87msk49j8m.fsf@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240814082301.8091-1-brgl@bgdev.pl> <83c562e9-2add-4086-86e7-6e956d2ee70f@kernel.org>
 <87msk49j8m.fsf@kernel.org>
Date: Thu, 19 Sep 2024 03:59:17 -0500
Message-ID: <CAMRc=McEWWm8N++4a5LMCAa0GWsQdi0KuSpj3ZuS_he=H0LP+w@mail.gmail.com>
Subject: Re: [PATCH net-next v2] dt-bindings: net: ath11k: document the inputs
 of the ath11k on WCN6855
To: Kalle Valo <kvalo@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	ath11k@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 19 Sep 2024 09:48:41 +0200, Kalle Valo <kvalo@kernel.org> said:
> Krzysztof Kozlowski <krzk@kernel.org> writes:
>
>> On 14/08/2024 10:23, Bartosz Golaszewski wrote:
>>> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>>>
>>> Describe the inputs from the PMU of the ath11k module on WCN6855.
>>>
>>> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>>> ---
>>> v1 -> v2:
>>> - update the example
>>
>> I don't understand why this patch is no being picked up. The code
>> correct represents the piece of hardware. The supplies should be
>> required, because this one particular device - the one described in this
>> binding - cannot work without them.
>
> I have already explained the situation. With supplies changed to
> optional I'm happy take the patch.
>

No, silent NAKing and needless stalling is what you're doing. I responded to
your last email with extensive clarifications. You're being told by the
experts on the subject matter (Krzysztof and Conor) that the change is correct.

The change has no functional impact on the driver code. It's also in line with
commit 71839a929d9e ("dt-bindings: net: wireless: qcom,ath11k: describe the
ath11k on QCA6390") under which we had literally the same discussion and that
you ended up picking up after all.

Arnd: I've added you here to bring this to your attention because it's somewhat
related to what we discussed yesterday. It's a change that is very much
SoC-specific, that has trouble getting upstream due to the driver's maintainer
unwilingness to accept it. Is this a case where a change to DT bindings should
go through the SoC rather than the driver tree?

Best Regards,
Bartosz Golaszewski

