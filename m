Return-Path: <devicetree+bounces-165675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 193CCA850A1
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 02:40:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20E9D9A468B
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 00:39:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4E0EF507;
	Fri, 11 Apr 2025 00:39:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C11175A5
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 00:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744331973; cv=none; b=DnxnsYQy1VNqDfO84lxx1BX7RKZqZtN0kh+6MtFQ92KMKZGsD+nvBjKSwV4Gt63GVPghnmfQEG2hvM4KgcKRwwv0E4jvAcB1YRtO+53dQfOZgQ9PKrRt2oauVSrwyWTO/fYsbMaM70ZRYzxVuE3ksKyK/8WgIpUNgue/W2ajylU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744331973; c=relaxed/simple;
	bh=e9D0qS5c9xuGHL/ortzIXle6NYY2SiyUiI7O3e/dBck=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ew8+4WgAxDsr48kCsmve2YuN4QzhnLC+lzRxZ6D/ZVEyVp36aQbE/1Xenc/itCcgaiJXE8Aal8/T0FlydDsq0D5prXyvGPiYSr1dYktC/aZMazIuwzEKel/+klegRxQjH2sTwa2fspyhRQa2cDz6r9NHFfTFqwJfV2KpwyRsI58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=baylibre.com; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-22548a28d0cso20762905ad.3
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 17:39:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744331971; x=1744936771;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e9D0qS5c9xuGHL/ortzIXle6NYY2SiyUiI7O3e/dBck=;
        b=IGIImZuHAa8YOvMWJAsc+zg5f0JIo1ekI26eJ1nPGltwIvV2MoYgM7XOBjXlpnNsxc
         tA1QW6kwT0caykOyCIV22xYE6tCltJZxP4u21qpG8Hp+emG5lDFkVMhd+GtolK3V/m1S
         6xCTJcyKyI/6qfsZmJF42v4tkB6A3sBJvT3++WAW1wqZ2c3FppukAp1GVzk7mncc5QGq
         mBLF63H2gYlVWkqFNmVp0uSYJHe1FSM7KMhIZ+TT+t/INKb2vM+j7fbx/p83E3vAimzE
         1T3pHn6vIJPWrsd9aFZ/qfOczRiiPL6GnrC9N0kwYihR11AC/PvlvOk66NNLf4pgiAJ6
         YFIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDCyr+4x8C6TVwfrNO2uxgyxKY9hOACKFbGn7OcPECQUel9ZyWjc4Au2ikMyUCyM0vlSYpGtzUb+iI@vger.kernel.org
X-Gm-Message-State: AOJu0YxBJtUZG2BrB1tOJ+Sntv95CfZ3shq2/2KNwK5MxwnBuuJUZce6
	W/SOXmfOwvElssj/jD2yBOkgjK2bYo3q7liNsYDvQTBGeHAJDveNmFqSAWczpYQ=
X-Gm-Gg: ASbGnct8jwyUGMa1YoJY64JmjWYqsCRwMCILPSBxnrFtNfQvtEIIUywFDcSRMP4nzaY
	6CNACHDuDNAH2qea8675XBlHwWIlAfWHHXKkkBW/9yFzdxQ5g+klPHXJJFwwzaHKxlTlVjpDt7P
	te9J+TO0WVrLjpnnjg+A3xGBDY1dHdQsSrhf6lOB1bz9TZgKbJpWI4VrVMx1lea4r9nx87eKtgg
	vc5yJRHGAwTV2XfgsgKcpvk2XfOax9WJdueY1g0UY6bFduDqMt+54rQJRFKMznJI6b9q3R1sp5f
	4p5ptgpsjzvZJqe3osroTpKH9PuhFvlmr2d0LZjoiKCn7tCE2w==
X-Google-Smtp-Source: AGHT+IHE46ZClxLKC9hdNZdcLjjMQRYqIyIdTcUA0yqBYfKQO0vYwM2JBDfdFcSq7VTlGW9xIaW8WA==
X-Received: by 2002:a17:902:ccc5:b0:224:376:7a21 with SMTP id d9443c01a7336-22bea4fde7cmr10776535ad.42.1744331971575;
        Thu, 10 Apr 2025 17:39:31 -0700 (PDT)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7ccb5c5sm37254655ad.222.2025.04.10.17.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 17:39:31 -0700 (PDT)
From: Kevin Hilman <khilman@kernel.org>
To: David Heidelberg <david@ixit.cz>, Tony Lindgren <tony@atomide.com>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>, Pali
 =?utf-8?Q?Roh=C3=A1r?=
 <pali@kernel.org>
Cc: David Heidelberg <david@ixit.cz>, linux-omap@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: nokia n900: remove useless io-channel-cells
 property
In-Reply-To: <20250213203208.93316-1-david@ixit.cz>
References: <20250213203208.93316-1-david@ixit.cz>
Date: Thu, 10 Apr 2025 17:39:30 -0700
Message-ID: <7htt6vwmyl.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

David Heidelberg <david@ixit.cz> writes:

> This property is irrelevant for the ad5820 DAC,
> the driver nor the hardware indicate use of channel cells.
>
> Fixes: d510d12f26f4 ("ARM: dts: nokia n900: update dts with camera support")
> Signed-off-by: David Heidelberg <david@ixit.cz>

Queued for v6.16,

Thanks,

Kevin

