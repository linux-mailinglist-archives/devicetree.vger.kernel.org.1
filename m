Return-Path: <devicetree+bounces-228352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1830CBEC7D7
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 06:50:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 086364E2E6A
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 04:50:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9435425F7A4;
	Sat, 18 Oct 2025 04:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gLZVWjEV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFAC15ECD7
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 04:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760763035; cv=none; b=tSZMwGXppNjcydpIj6GCdOs2VzjgeM/DRXKrW2rZ6xY8pURmGuGyjNOe/XO50BGFNf6ZgYgrCDU47BLqTG25U0fo11SPQ6B2fJLyxrx+MzraSj24M/MPu0WytOSyYUaGlI/C1PzVb2cSd4BcVsF/IRDG5er0b90e0jQYT44I22M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760763035; c=relaxed/simple;
	bh=k4F1HHaAuhImo4Rj3lkcJWOnbRZXj2OebT2TeychcTE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y72+wBvIWksFC9ndTbVmue/ALXnyNLidW+X0qIx4VQ3ipcWMdDoQltrPg65X+NZrcXVMQi3g2nF05lAUPI0PgV2/LiYSSYVm3HjqYEOP80jZ1Pe8CHV2pj3SebuBNYmMiPCWg9qwtJ3j87+Wb3l504/yfqFIEb1VSpAHPV/FJsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gLZVWjEV; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b6093f8f71dso1759654a12.3
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 21:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760763033; x=1761367833; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=K0sMcbjnxJjL/lB/sP+Eamk3VovoERZKocwwc1E/DhY=;
        b=gLZVWjEVInaFy/fHqejlqgq35+i3eIK6Zkya/wIYtLtEhNP8S51glb/dAFwyi0uh2k
         oSDCK4A38QLGWJ4i/A53s3oZWHUt+eu6A3m9TguYTNUIlb4/5scdV0/TAcY6C48ZKnGD
         WDYMYEp8WQ2hNt2X4fg/fuvVH+/4ldgLppsSEYpAKz/vNnAZAlP5kq7mjg+TOuR5qr9Z
         FDrQv1pgnQ5/uFoCUfrvWVKpNoNHZhaxBUEAba7zX29/2pGH2IPkA7bkXo/WmKjHp+Km
         ia6/VfIsQqeI2Zx0gqwe/ZUGQqZk95ves9/wHU9MCZ5b1t3slIJ5dFpCLFaz4FMEs4Ri
         mxVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760763033; x=1761367833;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K0sMcbjnxJjL/lB/sP+Eamk3VovoERZKocwwc1E/DhY=;
        b=W62W8eEkhKF3i12VrMxvwVbRoik5KbRcPZsgLjv/1OzAC8gZ0EFJpAyYjWuipocE8Q
         G8JwYMHhM/QoOmarVKNKJdXbdYwr6GMOCSjCSR6Szkeqed2c/OW/H8MgjlzEyJnXyBb2
         15dbC6MoIJlyYgR5PoDU/j4BXAPWl4J4olOhsb5iM9UjrO4l8S9T0aOcs7Y32+oVCOze
         za0B3+OIZEBxWq4HQPRBbM28S2+iOsvUDsfnfUhbN92H+CpthjJDskt5bRuu0L3D7HBa
         +QhkPbHpE89/K6W8miDla4J7jBdAN055CYf5+cOiQuKFp6eXqpRHNbqtadb+FOg0dbR+
         aTNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbLpCSkIWEvK2W352UCqnZ3GpyNq7VAd0x/FAAWs4XwRvanBTpu+kQiGrwgyn8XN+BjFqTDygWQuLo@vger.kernel.org
X-Gm-Message-State: AOJu0YyDQn290bXtnovQ4v6fGoPydpKvd+n3flTvqKBmZxfGNu53vso8
	8mpvD3jHjmmlsKTuE1la4BOSNx6zscd7TSXBE+BqLXt9m50+pamQ6md+
X-Gm-Gg: ASbGnctS2TRpgF0X/RehZtclOr4eJ21P/aOCn0wnwgvAedOvv9CEnfpP10CTwLBC1Iq
	eYRGXMK4ERT/m72YleyrsUYq+6JYRv7JdiZpWIa9JPk/IpkswN9hI/i82Q1NoXQFo/fn0rr7QBE
	vHsAkIZJrTxxFT1znQ1eC8+wLn9g0ToW9QIbcIwmsr/XCXlTQP1kbGwuWET54iA/mGYgIUe2ONp
	J/N1uaYsEyqP+Ufp5tfTi8vTOT/W0A269JmmtyNVOadxgk4xdw/wdtB3lUO8yLr66pHcT86vmro
	cQi+/g5qJ39D5AWn3vxYDKUjs2sI6fZ0uFFgHmy395huc8AK9z/ov1aDx/8scNsvWUZD9vTatUE
	1bQhJD70B8a7wxHLJtWpLOsdwHelz7rXOhC518dpNbRcu5Ww55XYy59VTf40PTfhiKKv/lyG6RC
	2KAJYvfNHDtTFrL/dOhmRlRZw865r0RVFvpXuQr3xH
X-Google-Smtp-Source: AGHT+IHMjoy3JYX0GIA0YqODQYkO7XpyCQFTI62FYZAFiPaOqOChaluABKwmRhz9RmejVfOVQ4yQKA==
X-Received: by 2002:a17:902:cf0b:b0:269:4759:904b with SMTP id d9443c01a7336-290ccacf11dmr76359905ad.58.1760763033380;
        Fri, 17 Oct 2025 21:50:33 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:5e2d:c6df:afce:809b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246ebcf06sm12900515ad.24.2025.10.17.21.50.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 21:50:32 -0700 (PDT)
Date: Fri, 17 Oct 2025 21:50:30 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	peter.ujfalusi@gmail.com, devicetree@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-kernel@vger.kernel.org, shuah@kernel.org
Subject: Re: [PATCH v4] input: dt-bindings: ti,twl4030-keypad: convert to DT
 schema
Message-ID: <6v45x6qq5onrmpjtfuyow4sokbchek6nul75neqvj6jhu7sf7j@a3qbgsl72ncy>
References: <20250819222823.157943-1-jihed.chaibi.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250819222823.157943-1-jihed.chaibi.dev@gmail.com>

On Wed, Aug 20, 2025 at 12:28:23AM +0200, Jihed Chaibi wrote:
> Convert the legacy TXT binding for the TWL4030 keypad module
> to the modern YAML DT schema format. This adds formal validation
> and improves documentation by inheriting from the matrix-keymap schema.
> 
> Signed-off-by: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
> 

Applied, thank you.

-- 
Dmitry

