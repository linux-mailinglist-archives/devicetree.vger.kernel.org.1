Return-Path: <devicetree+bounces-98090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5E2964C97
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 19:05:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39C232844AC
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 17:05:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CD071B6539;
	Thu, 29 Aug 2024 17:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ROhFhDPO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FE81B532A
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 17:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724951122; cv=none; b=Jj0+VQ9PxLmoO6m/JmX9jN9ScVGUPIi9gi8ZZL7Zi6a7o8SC8eRFDaxvptMAeOA01K/hRvpGehowayY1FmZRIWvfScZfzJgnfMb+2g+PQt/2blBKlYdVIoFfUbpBQsrxMReyhF1MQfn3QZMML5X1BscIny5KVbnPzxckfyZCTXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724951122; c=relaxed/simple;
	bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n3NiquS4MsSyhCCLb41w6gCrs9DGnxd/OI4iaYFVyjpDDVBMQr0eaYVqhMcQ7HBSYU8+CMmnTGCvZ/g7JwfWsjoEMRXiSPG251L+KAnrqOeY6jds/degQjYYFnGBAgzbMXlq7GH2yxStOiL1aB6TPqR4FrK/kav2z3cx0CXN9a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ROhFhDPO; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-42bb6d93325so155e9.0
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 10:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1724951119; x=1725555919; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=ROhFhDPO9Ll9pWySk8+1RNzrFAIkqvOHeAt76Sekt/2Nq2RgyGnHOrg06nVAwJTbbx
         zAi0uJwwJP0jqEYMfTHLkWaLJ2gekVim0k8G/dT0p2KPEwnnDBxr8vGAEIAbWGgwydbJ
         27gRXfuhbdNIvrexgxiNmeLdRC7iD8eL/W8DICUJu+ZkoPpVwFJIzZtULYynfRQ7WJSf
         hf3JckSyM3mS9++wZHTI426vRojfg3E4bT5gEo9V8aflq0OYneGz+LtgkdyczysS1TMQ
         xYqLj5Joab5nUxH9a9uJl41/gt6GcyBRtoMAcugUPwyUekYoCs3c/38EOqb5F/7yf3PF
         4aQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724951119; x=1725555919;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=TKT61EpkJUlCzg4B+9lbLfMoCDVq2UN5kTXOE/8D1YebCXvtIg9XrCl9QqqQ9amDj1
         PTnkfej78BXIqZ2HnpmzP8uWHXpWNp4qmdacJydgTxnJ3f7FMIVSCcbQSF5t6Gc4b/6J
         DZ/5YABkWZzzTqxTnWMgY4EanYXu8zbwXK0hqBqtmY+rnSvOops0aReatWXQwRCoSi9K
         jlC0S05FwYXyGR2X+En3/a4kfUQDaCe/u0n/R7WL/rH6+uPb9gzYGDT+KKqHF5XpzZ0p
         mItfQBG/LZI2N6Mtq2wM68qnOzUSPfs3gkJZbylzXVl97hQz1mCppU3hV7fJ6fWath3N
         EwGQ==
X-Gm-Message-State: AOJu0YwoMX4+AyRNo+8BO1A8SEH96ZDaTIzRhKFCZBUG3PffZr8p/Roo
	OHZhOi/d5bCta47yTtkijL8zlkHTq1k6filwlRaeqdv3/8rlUrEI37CWm49E7+wBTVNwXmOq+OF
	CL8JuDR2OJwdjNiEkWflQuAuNrhkeDu5z2WA=
X-Gm-Gg: AV9I1ZS6BWKd/Kn0ZQqFBbLb352bayFTiAJopxyh4ioFcmWIhiw+7Hw4zkbk3aXtosT
	jf03PkJTkdeN2iWyJdPDPw6Fa2DtLTndzg21YiNy5CgUM6NcqUzbJJNrTOsE=
X-Google-Smtp-Source: AGHT+IF8ncbv3hPX6txBwjD+mljfVJFZjCz8WD9pS5r0ChWeEb3HcbLEeUEQAMuL4Kr+bb+8RiZA/+ov4ZUA9UxFSLs=
X-Received: by 2002:a05:600c:6d12:b0:424:a2ae:8d1d with SMTP id
 5b1f17b1804b1-42bba2d4b89mr12755e9.2.1724951118768; Thu, 29 Aug 2024 10:05:18
 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAFs7P=jk=wfo0nbHzqd1NrGX3NKpOezD4-u=nAMqzq7mq4Lidg@mail.gmail.com>
In-Reply-To: <CAFs7P=jk=wfo0nbHzqd1NrGX3NKpOezD4-u=nAMqzq7mq4Lidg@mail.gmail.com>
From: Joshua Pius <joshuapius@google.com>
Date: Thu, 29 Aug 2024 13:04:40 -0400
Message-ID: <CAFs7P=jPqv2Zr6Fnw584TKhj5joBRt7X7gMidE4MiK1ABAMiRQ@mail.gmail.com>
Subject: Re: [PATCH] ALSA: Add logitech Audio profile quirk
To: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Cc: devicetree@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-doc@vger.kernel.org, alsa-devel@alsa-project.org
Content-Type: text/plain; charset="UTF-8"



