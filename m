Return-Path: <devicetree+bounces-169489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 499E3A970A7
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 17:28:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D0EA16CC82
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 15:28:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE97C28F95A;
	Tue, 22 Apr 2025 15:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="anTkKwmD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E3C19ABB6
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 15:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745335657; cv=none; b=Xhrikj30NY9zh7OgDSsmYS+oxR1FIbZBhqwzveqHrAWax6LDLnZfSfNwASQfhSLrqLwE56rXtVKKbeXa1hAljcpB87pnLNvDqHCIBna8TIjFrhJX1jnvv4RcJiP1QF3JxibXEGLrm06KPeJkQoLU90tIgZkjZCPdwJ6pGgyYkxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745335657; c=relaxed/simple;
	bh=+IZB028ZDzPRhAaCOR+1QbVbPztoSOEaa6sdgv+oVj8=;
	h=Message-ID:Date:MIME-Version:From:To:Subject:Content-Type; b=UkV2qKQpsct9/92LXKnWedzEEcnzqmbbnHTNO6o/KMjLu4f+qZ9xqySnFsCzjxOMAob32RNzDiECAgkh8c7zjkv2fPrhh3U+B2o0qdx1LDvflRy8nut+Jn2NHrxUP6cQTkUUqUJGJvLrkKdYdbUm3DL+zOOLisaBjHaZAscdqWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=anTkKwmD; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-39c1efbefc6so3307407f8f.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 08:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745335653; x=1745940453; darn=vger.kernel.org;
        h=content-transfer-encoding:subject:to:from:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=+IZB028ZDzPRhAaCOR+1QbVbPztoSOEaa6sdgv+oVj8=;
        b=anTkKwmDwu6PUiMnaP1GzKU+sM1AvyBzd9Buu2LjEBb1BNK/OgCnXlwHUe7Reb4WfR
         4W7fgKM8HPsJwWVmq8xQwau1npUV+QSdySag7Fz7L+uWHwXXZ7ewajZWGkJrmRWrH95z
         akFO1UBdcP8JYzMqMJ7IGhawXzC+Sl4a1zrfJzj3aQJ52B2iyn19GUGfATpbs7+e1BAZ
         OUi0EqlEZ1EjPFDeNMa/G/yhUtJ1/0rgj2gjGPt+zT+ddXmGP3Y+dQGweQmw1dXIztrQ
         3bl7OvOmkl9ZmECfbozV2nPqGmcnfPA6SdspN22qKhsFfciwpehvnmA9zBOw6T8gBXQl
         Y7cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745335653; x=1745940453;
        h=content-transfer-encoding:subject:to:from:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+IZB028ZDzPRhAaCOR+1QbVbPztoSOEaa6sdgv+oVj8=;
        b=Lz8SZHJev9qaxLjAmF5TL/ngeuIhzOWrPmyXo49nY1HyAf23cfFG/HA/mye9qy/Ds0
         TMHQUvydi+TLXE3SBj5L+MAkmuRI6csuSN+13adyoIkTW8tAOe++Z6AIjd+JF0dDuFfe
         pOq7fhm6KNMpOzBidxsxep1y8QNOgUp4UZTTP3AktHY97suLhF+ciq2GTisASCBR/0aq
         BYUXgjHL6HUE9xAOWAUcQNjz/3mvLifQqWF5ZUEN6VRuyTlf4pXwIjhnlDxYUPsYef7W
         cg9jOncETE9REDP6nK5Cm5SOUI2HbkR4kvLhF+nDeZPB5b619ccFqC1WkHZeDzX+7xXQ
         9Hvg==
X-Gm-Message-State: AOJu0YzgAGHsoTmUcmuE9z2f7p1bgmkX6yb4c5o0KLisZ0N9Xb62fmqY
	HPWfA68GsRDhIcjcdko1M8Z/GXvlhd7RJtPS3K/U9ygw4Tb8Oe8dQvEcmJ9b
X-Gm-Gg: ASbGnctdkRocN95P1QOOaHeMmhZgBPUstaHIueb9Cb61yCH3+RGMhvI2++snhUNGdhR
	u5FifO/eZAepUO9h4iYgofxZcxwZYV6k2W+lRZDyZ6Dk/+CgP4EG3BUSIH0U6qBK9PKmLOSjbUF
	xHUQ7xfIlSEM64lVyXSleSR+UYlWESvRMUiyQFm9pscIcTS5gO/os6IUej+w8MgDFKldwBBxzx6
	WhRWuEtweSzyoCC8VzLpcNp1zQ91/hu80TloUe/9L7s10a6/WvMuqLpUBw95tzfEsnGf4eq/6bO
	C43Wei2uNOgNzEtJ7g==
X-Google-Smtp-Source: AGHT+IFHGr4TsUx/p8wf/fVvYCo9wL5hZQcyvltzXO3URXwcwPIpiA2x82/AO0nMyxcRggdaGN6o/A==
X-Received: by 2002:a5d:648c:0:b0:39c:1f02:449f with SMTP id ffacd0b85a97d-39efba26220mr13284459f8f.2.1745335652857;
        Tue, 22 Apr 2025 08:27:32 -0700 (PDT)
Received: from ULRICH ([197.234.221.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa43cb43sm15810115f8f.53.2025.04.22.08.27.31
        for <devicetree@vger.kernel.org>
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Tue, 22 Apr 2025 08:27:32 -0700 (PDT)
Message-ID: <6807b564.df0a0220.1db702.5ee0@mx.google.com>
Date: Tue, 22 Apr 2025 08:27:32 -0700 (PDT)
X-Google-Original-Date: 22 Apr 2025 16:27:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: magotomariam@gmail.com
To: devicetree@vger.kernel.org
Subject: =?utf-8?B?ZWnDpHJrbcO9xI1hZcW+?=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

V2VubiBTaWUgZsO8ciBJaHJlIFByb2pla3RlIGFuIGVpbmVtIFByaXZhdGtyZWRpdCBp
bnRlcmVzc2llcnQgc2luZCwgc3RlaGUgaWNoIElobmVuIGdlcm5lIGbDvHIgd2VpdGVy
ZSBJbmZvcm1hdGlvbmVuIHp1ciBWZXJmw7xndW5nLiBEYW5rIGFuZ2VwYXNzdGVyIEZp
bmFuemllcnVuZ3Nsw7ZzdW5nZW4gYmlldGUgaWNoIElobmVuIGVpbmUgaW5kaXZpZHVl
bGxlIEJldHJldXVuZy4gVmVyZsO8Z2JhcmUgQmV0csOkZ2U6IDEwLjAwMCBiaXMgNTAw
LjAwMCwgbWl0IExhdWZ6ZWl0ZW4gdm9uIDEyIGJpcyAyNDAgTW9uYXRlbi4NCg0KUG91
ciB2b3MgcHJvamV0cywgc2kgdW4gcHLDqnQgcGVyc29ubmVsIHZvdXMgaW50w6lyZXNz
ZSwgamUgc3VpcyBsw6AgcG91ciB2b3VzIGZvdXJuaXIgcGx1cyBk4oCZaW5mb3JtYXRp
b25zLiBHcsOiY2Ugw6AgZGVzIHNvbHV0aW9ucyBkZSBmaW5hbmNlbWVudCBhZGFwdMOp
ZXMsIGplIHZvdXMgb2ZmcmUgdW4gYWNjb21wYWduZW1lbnQgcGVyc29ubmFsaXPDqS4g
TW9udGFudHMgZGlzcG9uaWJsZXMgOiAxMCAwMDAgw6AgNTAwIDAwMCwgYXZlYyBkZXMg
ZHVyw6llcyBkZSAxMiDDoCAyNDAgbW9pcy4=


