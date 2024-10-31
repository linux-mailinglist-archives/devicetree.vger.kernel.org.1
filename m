Return-Path: <devicetree+bounces-117631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CAE9B72CE
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 04:16:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1585C1C239B0
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 03:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 423F812FB2E;
	Thu, 31 Oct 2024 03:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FCd9x46A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BE91BD9E8
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 03:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730344614; cv=none; b=c+u3bKxRSv6wCLTKgATojXuEJRMwblpF3zMHXf+h32TzlmzNOFNx+3ZX9aRtfy5f25YDvPqtdvB9oMF071GIA6hONlqfmjFxSJUd9WwO2yGm54UbqUPQbjDcmvhwNufcvJnQfq1a5i/UWn/xqbXr/+59S/hiteI6aT2kgQsl8J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730344614; c=relaxed/simple;
	bh=CO26Xi2ZufcZQHF7GhqabRMsgC0ZN8foXoQn0KomRiA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=b/RTaZVw8BFIN3wMb093latC4ZsoeJUS6ecG9Pd6qy+4Yt0Hy8M54Ivr+PN+BriA/Hw1RUxKjZDw4fgjJV9jbZ2PkxDZ5wXSn2tv4kLoNXOmij9VEOPCl5Bvjhy/y6YIOt0NLj0zxwsFF6tgaGZN3WLG941BuawY0J1yeIdsDN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FCd9x46A; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5ec6bdd9923so299700eaf.0
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 20:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730344611; x=1730949411; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CO26Xi2ZufcZQHF7GhqabRMsgC0ZN8foXoQn0KomRiA=;
        b=FCd9x46AwxxyOAicsJWCVfJhl81fjd4a+vNNf7iKTg1JJsFFjlzDd1PD9FcxxkQc7b
         fFBsvKjqPJEOOphwKIXZWCtb93ZFVOC0IY4bisIEfdGAPMEzWvSidy/Uz4gCOh++RAWf
         GG7IstaVtOd2QZdNtlyS3gePj3UPHYLEB3+NDUbud1C+46BDC3RErLtCQ3RIJnmjGZdQ
         qIGvMDSof8zta+TUGpXG/NSrUTb9dCBcTXj/dRCLlWDZ5FnflPfP+BN63U2RU29sE8Iv
         3YX8YwZB6SsNc1tVjdH6CJle72cAS5Z/TUJR5rQIj2kTOJbEEvpkK7/ZdkPmDMStGCtU
         iMfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730344611; x=1730949411;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CO26Xi2ZufcZQHF7GhqabRMsgC0ZN8foXoQn0KomRiA=;
        b=gCFcw7Kdc0LH96M35QAnywIUuNPkNpvxohxYaB6XktEna0mtc3h2Le+YxkI94ycI6/
         EXdoJX7M1ZgM/mKrA14T3GjQcdbRbjyPLmM5oQ10r0pFrIA72ymdW0Z0iWVLiIqD8MYf
         tia4NUIMzVYZhur+Y9JxbnG8fgfutAN8EZkxpLuSo4vGWTDpSd4/p96UkrS8RVG1offi
         B6djn7GRM95lY3NyzN+K9SBxC7XTxaia+dutQAtM9aKBwUnTTqk7l4Zp7M+jYc73/Zk7
         0k38hQmGbD+v1q7ob2bnuE7KY0M1S21FNZtBOe6cQBpZhY/DumoSt21Bx0TxbM1G4FXG
         GyYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbwceZVZnWqf/oWC+HbjiB8bCz3HFBtO2VdDZOmQHJ1HwMnj4Bas090Cb0jCXbJEYSHF/m0clioKIt@vger.kernel.org
X-Gm-Message-State: AOJu0YwmtyxSkgbB5R9iFBPODrzmb8JZ71IL9p7ron1qbFs38G2g9JoA
	hzoB9W5cGrNV3wtzDwQMypZjS6XIy0yiM8i3LTAPVjlXcJA+7C/C
X-Google-Smtp-Source: AGHT+IF6GBjpg7aD9uHXCAQxv+fE8MgSqRX160sLvM/GKFoARyjXKfUi+zX1I5r0cAwC85g+cotMjw==
X-Received: by 2002:a05:6871:5822:b0:288:3762:f7f5 with SMTP id 586e51a60fabf-29051dd94d1mr13569271fac.47.1730344611458;
        Wed, 30 Oct 2024 20:16:51 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:4dca:6aa0:ad60:9b88])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2948742a0bfsm270149fac.2.2024.10.30.20.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 20:16:51 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2] arm64: dts: rockchip: Add Orange Pi 5 Max board
Date: Wed, 30 Oct 2024 22:14:49 -0500
Message-ID: <20241031031528.23428-2-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes in v2:
- squashed commits together for initial board file

Link to v1: https://lore.kernel.org/linux-rockchip/20241026100310.52679-1-honyuenkwun@gmail.com/

