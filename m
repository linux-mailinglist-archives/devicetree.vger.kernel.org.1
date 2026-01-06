Return-Path: <devicetree+bounces-251785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C61B8CF6FF6
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 08:13:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D877E30501B6
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 07:12:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4CFA309EE9;
	Tue,  6 Jan 2026 07:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PNZS47N9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5435C30275E
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 07:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683546; cv=none; b=D73hLfBPjM7eipWuo+ggAi2VswKtNynbWf01bZ09AMG8AInPTIPpGQMU9raDWmNObylMEQ6QVdhp8oR9JDCjLeWUQWCEc1eot4Cte/H4m4TbKdvvwZ4bRdRsDT/8hse1lASVpXIdkHwoSC9DhEukrgZYT+xJGuvgRIind8QFxO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683546; c=relaxed/simple;
	bh=Cw6Vxv2UdtRGgdECy+/fqJVP/fOdAd5jem9BgKrHC3g=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=XhF6n0N/wAZ1RtyRIDafYv5VO0AL5baw2ldTQvQayH6Dgd1ezJFKY5MWbKKFCcbX5m4d/nNO8HKinQs79apuUMETcsKElx9nyGjJrxWzy0CYuv19xBOuXcdD18YohHXlCKQSToEvXIswftw6U/Ue/i/rpUhV8Q7+2zgwUk1fD8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PNZS47N9; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-29efd139227so9072675ad.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 23:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767683544; x=1768288344; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Cw6Vxv2UdtRGgdECy+/fqJVP/fOdAd5jem9BgKrHC3g=;
        b=PNZS47N95qBfEc6EjVqicmj+oZk7lwIJqhfYRQyk0z7k146uwnWKw4d/MwVDioDpt2
         FOhdyBJTnytY2eCWiLS3WIluKx3aSBksQc320ZoVRckXkrwu2di4Uy5iZ91xx3P87kBp
         FvsnonWn3rSjbomglAstUO2CzYENTSZs4Wo7KrkvxtpMWyO37rid/H0pFOGuXv5GYWX1
         xiA00DiVrpFk0IrSdg/Yc+ox+fdsX9afLXFw5VPe66rQlepJUIaSeOXzgR8GR69dxpL9
         00zbf9Fk9umrq9gbrbHLDRbN8209zdMXi7mvRVyaCltyLD+2OBagmo7SKhnFio5CRb6b
         WOiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683544; x=1768288344;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cw6Vxv2UdtRGgdECy+/fqJVP/fOdAd5jem9BgKrHC3g=;
        b=SMHTnqP+R5/LimVdzDvTFJadLDyg6GsxCNFzu21oivl3KvbCPwFESkeNvRB4w1ifSP
         0v2wt8VmxiY9eNKfbfmSWP0S487vrYaI1W/JP1TmSJkHNxjzYi5VbYW07ev1HElW28wF
         wVSvrBUAbAmZub7BNGvoXP1dI+Yx9y1Y+KRbyDmCzW4YjV0x3CKB8RGpPGiGs4UKyq2B
         Qa+Afyp4GVYDgIO65Hb1Ou73l8G6E7wkeOJpBSUNXvN3enY32KhT0qpABZbc78km9rpL
         XQIC2f2OsbLHOr3xSk1phOHdvtzfBIninBV5wpMQ99hMYRhlBkPtV2ljWw11XEKIM6pm
         yXMg==
X-Forwarded-Encrypted: i=1; AJvYcCUeH3I6N3fgqTR7ixbgpfCHj//41uWi0kxentO8RdeNAp/SZqawBWufYXw/eIZgIn3MXkX36+ACi1n6@vger.kernel.org
X-Gm-Message-State: AOJu0YxoAbtBsO6da5Dk+1do6wIfJmVVEyZiDAlmniQtBt3oPMB6OIsp
	qNYSKvEQh6gUR4TdmNIs3mDqKaiAuunkGaLd1g9PnWs6F1Y5+FZkjlL/uP+MMBJKkSM=
X-Gm-Gg: AY/fxX7VMMJlnKYpaV+rKdKYxdp0mD7vkhCAMchMmEz7e/WPCfo4rJmsRhMd5yGtWdD
	eFdjDSCCOT997EsnNlBXPb6rp8gElgyDd+aFeAShkJcu2JLFW16vdYKEQC6R5W1+EiltwWHoLPf
	L+qaLGrYNQyPXb2v98xFJIUYS1kee7uyruJEvWHBF9JJBgguytDoQNwW9K4BkXmeVhA3XJS/szn
	jf2Ik6UQ+JoZmMeKU86r+BcM5TfxYgrOPs9oekeytHIzKeX90EkK5lfVtfZ0JQesdO9UZR6VHcw
	u7WHbgSePoLmf7MWwMHLCE7g+NY2N5UY+2WChIA7QVXk21ZQ3NUipOWxRttcmxF7MjFQklCE94q
	OQJX7RylqynZ2ckxbbNTkaFWpwDiDDsFv3OqJR1NmB6MJSjJlJC391odHgNVAZbjbwQS1bjgKy4
	z7xmMFnKfY05ODEOFavw==
X-Google-Smtp-Source: AGHT+IEC7hkB8a3+W+9CynY8VbKDMio9JBatwLTf/u7tQYOQk3WKz9MPs9tq00X2Puv0ME4y4fl2oA==
X-Received: by 2002:a17:902:d491:b0:29f:b3e5:5186 with SMTP id d9443c01a7336-2a3e2d569b1mr18844285ad.56.1767683544446;
        Mon, 05 Jan 2026 23:12:24 -0800 (PST)
Received: from draszik.lan ([212.129.74.225])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd4401sm12261165ad.92.2026.01.05.23.12.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:12:24 -0800 (PST)
Message-ID: <8385a4fbb6c10cfe643c2f310f6a67150e260cf4.camel@linaro.org>
Subject: Re: [PATCH v6 0/2] MAX77759 Fuel Gauge driver support
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: t.antoine@uclouvain.be
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Peter Griffin	 <peter.griffin@linaro.org>, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org
Date: Tue, 06 Jan 2026 07:12:52 +0000
In-Reply-To: <20250915-b4-gs101_max77759_fg-v6-0-31d08581500f@uclouvain.be>
References: <20250915-b4-gs101_max77759_fg-v6-0-31d08581500f@uclouvain.be>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Thomas,

On Mon, 2025-09-15 at 12:14 +0200, Thomas Antoine via B4 Relay wrote:
> The gs101-oriole (Google Pixel 6) and gs101-raven (Google Pixel 6 Pro)
> have a Maxim MAX77759 which provides a fuel gauge functionality based
> on the MAX M5 fuel gauge.
>=20
> Add a driver for the fuel gauge of the Maxim MAX77759 based on the
> one for the Maxim MAX1720x which also uses the MAX M5 fuel gauge.
>=20
> A future patch will add both gs101-oriole and gs101-raven as clients.
>=20
> Signed-off-by: Thomas Antoine <t.antoine@uclouvain.be>

Are you still working on this? Are you planning to send out a new version?

Kind Regards,
Andre'

