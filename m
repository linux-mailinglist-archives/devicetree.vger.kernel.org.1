Return-Path: <devicetree+bounces-222696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C66E0BABFE9
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 10:22:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8245217FD80
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 08:22:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F30B2F3C0F;
	Tue, 30 Sep 2025 08:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="bM6ttSNo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542472D24B1
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 08:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759220531; cv=none; b=h/IvdkRcjyfviObmJ/iMeIewbp2tgI6kACGvLDVQ4n9A05fOf9VlgZBGECSgnmDUqmgK6EDccL27bd+SZdHfCqWEz/KKJcixgzByhZRE7KniyO+Z3VjkG5qPMhuhEaQW9/slayGJCtToS6z7vKfUH66sa5VauvfiLbXcxpaqTlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759220531; c=relaxed/simple;
	bh=4pE3k2VBU5zrdsB3CR7FkZwhjoZcQukX7hsPH5UvQJE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H9iVxEXviWERn0yV+B1glMpPByk+vFKGH3ctG6d5Q30405C7jLBNa5jjLVUFrGhaMidj63UNYp175KJ8bVh3MxHgulUu0S+kg3WQ48wAm75aag0GaMOwibAFSbqTkV3WX86yniUPJ3Q147gZVfQfe880KhodVHYofdkssYigngo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=bM6ttSNo; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-84827ef386aso367176285a.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 01:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759220528; x=1759825328; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0MYOqdthezk2Y5aWzOzKpk43i1E5SPt8BTiExHKtReY=;
        b=bM6ttSNo7otdGv4BLNxO4zMnBWW2WYdy6KSDTZKB/1BEq3d0PR70G6GJneitZdIHYy
         aCP5mWEkxZb+CuEYPJ1vGlBizeawQQgo8g69L/w5lbsTccSWZ3YbXvgXBrrTDq9Qt16L
         dmYthKXDpPm2+7dSnvZf/vlsNxxJVejrw9GTEZQ+kTuu3eKsEUkKI+kgfMGiswQWJdit
         4GGsIHzJMFTnDD7ZisryVyJTj62d+DanYSpzhtvReMhMQaaHC0Rc5rZb7qY9WKtbDZIR
         t2qhharnKWM2BGVsCAK0RiJzh0eCQkxjEPDP+I+9KX4ZBR48h3So8GbT9ACZz3jBPPxf
         BeAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759220528; x=1759825328;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0MYOqdthezk2Y5aWzOzKpk43i1E5SPt8BTiExHKtReY=;
        b=bo5LJggrqEFYbvvz7Ft8aq47KXNdl/kJRLBuRyNeWOmgTWAEsQzvOg/99h3GUo1ZpW
         5GVQH8QcIPO+IITeOr9g++gUTga4ly/TQp8oUTR9KH6i7GGGUW484aPymqZsQBQIaa7k
         ZogoBWjqhBRBvdrnJeEiIGCRVd7h3rzH1KItdJPF7HZ7fvztDTy2q5s1qbBAn4gRLror
         vroSOHU8CQOi2D1M9NlMA/SBZJHSmEo+MKnBf8gC8Rr9+4LJYANx0c+dq0C2eHMfrBNN
         Z6Fwax7YaTXWcb1H7+WGSNyHChWeQvLyQcfy8CosaEJ/h6RfZpRJgSiE4z7TwVLehcNH
         Xx7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWh4ach2L2/N9LAhFcf9Y38m3pAymZB28PAT/5MOmN1FbIH/8fzThzrDKZXaWeNN/EZ+ARszKbtxTRa@vger.kernel.org
X-Gm-Message-State: AOJu0YxkLKsbVMB19j2F10k+qUMIt3OrPrWvQADf8yVXMqiojlZZ9y0Q
	f+xIHW3LnofcZsHmyWwDLjQTy5dX7CqnreNloeRXyA6k/A+wvSW8wT0ylAWZdNrPo59Z7vJWIA8
	v7BPGRbFkJ/pb0Wzz5L5sDIewfuJmh8bgYrAPv+zUNA==
X-Gm-Gg: ASbGncsiBgj6QaRhyyLValfsj8MwNZMnXXIvPBOLaly+QoGnzfKmjsCTvGkznvl6M6z
	I5CpQhgdZURNdxyJDW+BemV2RmzL8Ksxe0xM6a5SHYM5WxM2XvjCFk8BubtFgvg5GEhUW4mI1tR
	1GENCPgbB9fh7EagUujN5Stp3J7G+iE54lmyJHpmpfn7HwzEg4G+sx59gJOpJiC72avAv32n9q7
	3/3a7bDJdHDjGGOoFn7W+2khNLSgmHi
X-Google-Smtp-Source: AGHT+IFFpQTgFBa/WWGnT5QFcu4l0kS7gkEATk8JWkO6XxM3M12kz6g8Ct77aVC/3wWZvw3xXRdgjGXw0bvG4/9kIY0=
X-Received: by 2002:ad4:5cc2:0:b0:81d:6f27:aff9 with SMTP id
 6a1803df08f44-81d6f27b588mr167506256d6.56.1759220528215; Tue, 30 Sep 2025
 01:22:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250821031514.49497-1-yelangyan@huaqin.corp-partner.google.com> <CA++9cvojHApEr0b5ZbRNVjYtWvCS8WmZ-mrGMDh5O9mp1fkT0w@mail.gmail.com>
In-Reply-To: <CA++9cvojHApEr0b5ZbRNVjYtWvCS8WmZ-mrGMDh5O9mp1fkT0w@mail.gmail.com>
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Date: Tue, 30 Sep 2025 16:21:56 +0800
X-Gm-Features: AS18NWBUsQkpqXkip294ozPcJDVep0TBrUZwRk3B4uL8u_5nT6ff_J9AvEre7T4
Message-ID: <CA++9cvrDRU4PStp82M0oz-ZtE-1fuPnMOEfMw4uv3wL1_DoYiQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add tc3408 bindings and timing
To: dmitry.torokhov@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, jikos@kernel.org, bentiss@kernel.org
Cc: dianders@chromium.org, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi,

Just a gentle ping on this 2-patch series:

  [1/2] https://patchwork.kernel.org/project/linux-input/patch/20250821031514.49497-2-yelangyan@huaqin.corp-partner.google.com/
    Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

  [2/2] https://patchwork.kernel.org/project/linux-input/patch/20250821031514.49497-3-yelangyan@huaqin.corp-partner.google.com/
    Reviewed-by: Douglas Anderson <dianders@chromium.org>

Both patches have been reviewed.
Is there anything else I should do to help get this series landed?

Thanks a lot!

Best regards,
Langyan

