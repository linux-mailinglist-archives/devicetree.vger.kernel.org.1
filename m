Return-Path: <devicetree+bounces-69730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D49988D1503
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 09:11:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6424EB21EBC
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 07:11:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5985D6F066;
	Tue, 28 May 2024 07:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UK9b3VBs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2FD446AF
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 07:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716880296; cv=none; b=LpdNdyuZ9VFNn9OrYE0eaCT9xao8S9P10JmWeB688HXUiF9jXAvc/TEjLCVX0ByvfROVbfWud55Y3E05hFPV7aiUa8lrnj82ZJliN4sBVvOJeuwAXa8tx/flHYtidqAaXM10H8WJnnsXCE1H2VaV+dXiCRMFQ7D4LUWEQ34lrBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716880296; c=relaxed/simple;
	bh=kjW/OwKE/38nsTgfKPv6P/u0Ov0EctGEAhg2D4hqOUo=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=O+aPgJS6wPS5lDHcL/NnD4By01vCT0QRQIygQ0hF9uiwx5NNs9brjogM2u0TZHI61odSA2pGlKnr1lS7OL+RLzvtldibrnSMPGvOhgTXWCnGz67EHyjPIhlCmaJulpNmGB1a711bbUDnv1hiMx6GmeAgE3nLBTCG3L/2RduHvFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UK9b3VBs; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-57857e0f464so606121a12.0
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 00:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716880293; x=1717485093; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kjW/OwKE/38nsTgfKPv6P/u0Ov0EctGEAhg2D4hqOUo=;
        b=UK9b3VBs8fp5ljUpCdu1dY+UqhVwu0YJ+0xd1Ns06VOKGZ7A6smiSlrg9ok1SwB+1c
         i/MphuXoLeN7LkN7rJxjMVouWDorvO0gFWdNLc7+M+MDHzUYOtgoGvbTRfmOHlXTtwA5
         /yJDee0NUJqjz15MQRBOd5PaAzz5mMLtexs9Ujf2WMmyOGu5BpZwLYkB3uUQBzqQwLKo
         8C6Ox9CIP6fNK3QnQ++hd6E32XEWfzIuZpEol7VsUckATshOAVKe2I8Mtn9kv8Qp0bMo
         CgHjbQgvueyKNkL60HPUtgWQdN7PdfqUheX/cqc1LZSiSlVm2WR3uScfPjAOloWLoax6
         qkRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716880293; x=1717485093;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kjW/OwKE/38nsTgfKPv6P/u0Ov0EctGEAhg2D4hqOUo=;
        b=P2t/MCqOINIzPbi6VHBFt/oT578iUMMKRUsoDs0vY9FDkIrSSKfNa12I0ry8uwQn0g
         w4Hzf6/ZHwJuzX3tnuilCl+keEKg0eJCRKWvRb9qn2Wql9mNAjHgji/7EEw+Sg90AHE8
         Mzr2bpHVOOtIP4LqNErvvxCuCUlV0AaECNPCVK2EB6tVq/C5n8I6e71njP7ugQZb5L3h
         e6SFiJRBliiMe581LWyt4HVrbj4sM/7ETuGMRjdiDKy5lNz7evQbUWHE287mxjJHJvNc
         SsWKAcgEHb2bVeIabcJuoJ09BRJ93b+1rCqAD74mOtianw3GX7Ls22TYPMAcXz8OA+Vh
         DEGg==
X-Forwarded-Encrypted: i=1; AJvYcCVw9dGzPoe5JEaBF8tmQilEbhcehF72lggTsrthrb3iLUWpLZYrMw7WXjrYkC6NEKGMxxOfeZ2PiUC3aNlOcfX5e6vcc5y9mjARLA==
X-Gm-Message-State: AOJu0YxZPX6ZsMgO44P75SgzFp5gVGMeA/nR7jTuYV7vU4M7+b6iyood
	Kfd9w6aCe0SC0DNQsb+GqwpGX1KwRFKRDUcmJCcJQqo534QShrsZuNn9zzj20b3iafh4+Uek6QT
	sDr+lMKDbnPL4LYqsqRPvt8lfhLo=
X-Google-Smtp-Source: AGHT+IH6+hTIoQBFFbTeS0YuEp2GoR1v36rnyQ70PtF5/UbceQS4J5FbAFcmhigUp4V1HyL5pHs4p38fkMsqsZBen0I=
X-Received: by 2002:a50:870d:0:b0:573:5c1c:4f5e with SMTP id
 4fb4d7f45d1cf-578517a4197mr6439347a12.0.1716880292825; Tue, 28 May 2024
 00:11:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Philippe Simons <simons.philippe@gmail.com>
Date: Tue, 28 May 2024 09:11:21 +0200
Message-ID: <CADomA4-gOq+76qCySyiQ=FEmnEb6O4N86hgc7sJjGxbDfSXU4w@mail.gmail.com>
Subject: Re: [PATCH 0/2] Add WL-355608-A8 panel
To: ryan@testtoast.com
Cc: airlied@gmail.com, conor+dt@kernel.org, daniel@ffwll.ch, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	kikuchan98@gmail.com, krzk+dt@kernel.org, maarten.lankhorst@linux.intel.com, 
	macroalpha82@gmail.com, mripard@kernel.org, neil.armstrong@linaro.org, 
	quic_jesszhan@quicinc.com, robh@kernel.org, sam@ravnborg.org, 
	tzimmermann@suse.de
Content-Type: text/plain; charset="UTF-8"

Tested on my RG35XX-H, no issues

Tested-by: Philippe Simons <simons.philippe@gmail.com>

