Return-Path: <devicetree+bounces-168796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7915A946A9
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 06:15:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFDF03B71D2
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 04:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D799715DBC1;
	Sun, 20 Apr 2025 04:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IFOuQoHP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3950018E76B
	for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 04:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745122504; cv=none; b=JsGTjdadFdDcn2fgn/uHmAn5DAHRbcXq36airwjoVwzPFKuT0bSwLZizexOjmAexwEntPkrUjVxw7m5xa45t7rzJP1/fnMZDqO1Gi5OEgKizE6LGsYHDxXiZZORpas+l57p0EKLuvB4U4sRplsgBXA4kd2tKGRsJh1odsFJ90nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745122504; c=relaxed/simple;
	bh=5wxG/PD3y1gNjGB7AK6b5PlI67QEyByu1d/flv9JTpI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=NB+dzz9UDSxxsILJmt8UuoKRhYMNJqH1TcFKWSLEV1s44aBccJL+B+Hd362CtoBTg0D8DBIrXlVwO11/QGsy1iB8IbVG4m1pxHrwT8JSYws+HCRUuXB6ZwFZ1pjmy8VDuy/lEj69RLmkg7QGsVgNb3um8XXcZwG57RLrGop1w6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IFOuQoHP; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-227914acd20so32254895ad.1
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 21:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745122502; x=1745727302; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q2HXiX0Llqkid7BbKxFHITtAYArqMyUNvEqqrLum1r4=;
        b=IFOuQoHP5cMJfaiJsVCYWSMhTh/Q+0G4JBJFmslnIcreFrb9GvFsP/k9RwHUvx5z7d
         OODekzgM77emRXLqa8ka7dwwjA4MOoocFFck6cEUU/CdrJb6PSsk9ns6G855q/FcKAoj
         TUyFQFi2XxoorOhq8dGYnaVp2miD8/zc99mLaA2uJG2rDvAD912RMDZ+E+2fj0l8vgz5
         aaYuqIeOPp7EWfo1uj4hm7kr308BPG/pKSZUa96CdR4NiPqmZEBZuw/tj2azFNopA+yf
         VyMyk5GNLLR2GOWXmw1eY5+quVktvkrNabI3Ql5QRBLShVww3itsDSPtV5GzLPJvQkkI
         7kYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745122502; x=1745727302;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q2HXiX0Llqkid7BbKxFHITtAYArqMyUNvEqqrLum1r4=;
        b=AF5Ss8tqFGg8lg/oeDQgjeMaaqOGclygvldRfgkpidOoC+68k3kY5hFKGfqIwKoV5L
         rQDXKfiQijTA40kJjRAjjZ7J7IPdfZNKFysPp7YfAVLIl5PP7P7w+ziCHRT6hTw3UA5u
         zd4WhD/gJo/fMqclVjQ8XaEyMut3i2kq+kZUQVi+dIFIzjwF/YntxqgLJ16R8e8QIl2P
         4HIgYcvHXY0N+BKHM7s75xdJQB5gz4OmFUXKCn+gF/rczHIBqm543DD/FO/7//J8UKQp
         xXwx+MIQVogS0AnZmb9kWy40YxzV82fgQJiS+g+eWyFblTxElhVje5a93Uz0uVfegnDL
         gJvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDUu+U5o9Mue2v9zudDWC05hKGgXG1p2sdf0lZPqVzxMVEQJX9S/Q5TttnnAbxv4nxERQi6cnFmnDI@vger.kernel.org
X-Gm-Message-State: AOJu0YwBnZVS6Dsxm/+YCk5m9lGq4Vyta4GkVW7otIYQUhFAD69KJcoZ
	WPe9ylwapfrm2cEQLlzKRAubEZEHbvedDEuifpT/5mjzXO4DfCBsQ0cymenu3g==
X-Gm-Gg: ASbGncs7FmzgbFtuDvb/jw0pOFrqD6hnJrpz4pUc+5KjGypTrMZAR93Gm6QJXbeofh6
	0i5WRsdzBagnJGLAqGzTsMPwHgD8rkI/jG4uOnZCW+bzGkM62ZxYbu8iX7pfcI3rsbmXvzK+Cys
	eIRQLq/LXQKsPaazNn+/rK5Oaxd8QwL8TAzQBc89MUQ/FxZiOWM6166f2Of4BrmcI3Y5wwoN0Om
	n3L8cdMFhOd8Exg61l0pWkVEBwMtB9jPRN/N8D+jiucO9c+ZauJQscWjztzmWMZdtcRPk5SsBnf
	4Pa6ftf8F9zxkxkCLhN3WtGHU19bR/yeQWoMqZC68m7MI93cewpqYw==
X-Google-Smtp-Source: AGHT+IEoRogqNsHUePuqqRRfsSxmfzIJqF8/P5aLwK+/NB/DXV9xoYPlMraILqGL7x+DlXFdEmPRaA==
X-Received: by 2002:a17:903:2f81:b0:215:742e:5cff with SMTP id d9443c01a7336-22c53ef1653mr122737365ad.16.1745122502501;
        Sat, 19 Apr 2025 21:15:02 -0700 (PDT)
Received: from [127.0.1.1] ([36.255.17.92])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c50fde851sm41412575ad.239.2025.04.19.21.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 21:15:02 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>, 
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250414214135.1680076-1-robh@kernel.org>
References: <20250414214135.1680076-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: PCI: Convert marvell,armada8k-pcie to
 schema
Message-Id: <174512249875.7011.12246888223550931495.b4-ty@linaro.org>
Date: Sun, 20 Apr 2025 09:44:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 14 Apr 2025 16:41:33 -0500, Rob Herring (Arm) wrote:
> Convert the marvell,armada8k-pcie binding to DT schema. The binding
> uses different names for reg, clocks, and phys which have to be added
> to the common Synopsys DWC binding.
> 
> The "marvell,reset-gpio" property was not documented. Mark it deprecated
> as the "reset-gpios" property can be used instead. The "msi-parent"
> property was also not documented.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: PCI: Convert marvell,armada8k-pcie to schema
      commit: 82f48c8c83f576edb2614c49d0980f8d65eb4772

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>


