Return-Path: <devicetree+bounces-189532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00506AE8237
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 13:59:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD5483ADE59
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56619262FEA;
	Wed, 25 Jun 2025 11:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="qs5YSOO0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55B7262FC1
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750852531; cv=none; b=rW4KctbvL089jkgSGMJrc6TLkzbZAyC/Lp38mhIkPgDV0J5GzdDN+B+Pdx2oSq2dTQvcEQG+cyY5/+j6Nzk8b0ANqD4YzawHIDvdFEY0kPVzypsjKVZ5Nz/A85EXV0mm2dgwmvMxqq73GbUExlIPR+4/a0APE+o8gNNttgNoUMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750852531; c=relaxed/simple;
	bh=Ele4kC/bFjkVABuTlMtPoVal/q9sn4Mx7Xjke1CK0u4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=PK0w5Z0hjqaFEUZfT9QIKInpd7JcD6g/vDNPZJI7338cr9CfOAPRfXa29D1iy+UtTEdmeuv5o3eNmqiVZfYLIzfyR1LJwG3qB/dbxoWDqh+u5fanfkR0BptruUUCVtyuddPiGtpTMn36hPPkT6Zo6Hd2KBExH0twi977LHt+3GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=qs5YSOO0; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ad891bb0957so256405966b.3
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 04:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750852526; x=1751457326; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ele4kC/bFjkVABuTlMtPoVal/q9sn4Mx7Xjke1CK0u4=;
        b=qs5YSOO0LLGQ3vi6rgHcweeS/ep1QgOkxBFP9k0ma2vtkXALRY3UA/PIvNQtFlCrgA
         +s597SFYgiVvq1zi+seQXmRMiQO/JC+kKqEKG5wONMcnjRl3w9F6Ot6VqXM6x/DDuFl/
         5N8IETSyMMYnbOSnO1rkJTyc2c/5W4dYFJx/6uu+ceGGpeHa66CgYZ/19MZnGegDcs6y
         Rr6ijT6wXL4nzef8MaP0nEGRBsG0dINE5pQRZ8Exz4pnfgNKAY4isZbTtXAfeMPm3KXD
         P3ESbmKN04yIlKkbzpmFSNyGEWv+l36Z6YQaYn/EP9iZlmB+2wjs0XFhEmB8o95IvsPI
         6PAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750852526; x=1751457326;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ele4kC/bFjkVABuTlMtPoVal/q9sn4Mx7Xjke1CK0u4=;
        b=XwZ6Yc7IkNs0COEPa60VVWIjk185NiA+8KCqEgH2mVWo5isF7sKLzOl4kTBBMYWP9D
         lCnfm/mSCIX/+be9DrIcgciqtayK8mCzo2hTJb4z5dGsJ5UkyaVjn2s4gF2YbS7E9Orp
         YIw4cefnFYuZDH3AdX8Yhc2bUqAoM5F0c3hf0JDBBmv2CQQAB3A2PcJzyzhdvNlh6bn9
         lYzb3lJ/1ZcYCepsP+mVG8XRapt//lkkv8KPjieCSIVTSDxzSs9Sm/wWXQP7b8X8uI/2
         81ssf2vKWunLFq5CHv7zIaDmWlG4W5MC1YEuDfnuDYWgKvo0kWHIuhmStoX0nOBzJSCo
         XRfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoQLwzmvwESKCS/EqsgwpstlPLCSk5pymzRuoes/2U1mQI3PSCfA3DFS7Q8eqNc8VSOZiEU3Wc0JiT@vger.kernel.org
X-Gm-Message-State: AOJu0Yzo4O6kvu4xwEbLLQageKTrcYjbWfb1AkE/MhtHQPW6kJNgLaEi
	IzVla5VzRigFeXvs+PkkjXUGBuIT5qgKuYR6CvnWwhtYddueB3f4DgTNA49Isku1ij8=
X-Gm-Gg: ASbGncsey7wfoW1Qd/Hu71IwhURs2gyAV3waN9IusM8gTr8XpZUZtv2pG0L4aUkU8rc
	1ElewgDfoDsNNmBeUzsyAaaFEwlUPGfW8muM8xUhOE5tg3c4DhVFoHUqhKAhJ0OFj6ufjj+jxY/
	uDDVlo5WWJS4xPEHhobyxNM6Pp+PBjT8G0Esg583uGJ1I6fNrzYptr2Vp8+cTw7RxyPtiWFhkzh
	Sf7Z0D6UnOZx5QYcZ1jCWvZ3SJLRL0h2GIFVqhE2KLxMXOAf8vxoiCcFUoUwZuI+l+cwCsGBukF
	BfAa4z6XpZXfs9j/u16Z4ipnW0x3Ru9aZ7Tr4x56Va3lNbw0ugH7gWkL+4FwT6KZwAHF2JnzCrQ
	ClwsNeQXAkG2IDhvFecgWg5GRIA5zVsk=
X-Google-Smtp-Source: AGHT+IGHwtU2WcLOLeMlMlhviB+W5ro/PgSmY8OoYgsUjPuqlDw7Eu44hCDzY1aMqXqaPDEZvGOrnQ==
X-Received: by 2002:a17:906:d92:b0:adb:4917:3c10 with SMTP id a640c23a62f3a-ae0befc3ac1mr209592966b.60.1750852525989;
        Wed, 25 Jun 2025 04:55:25 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0cb358618sm29256266b.102.2025.06.25.04.55.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 04:55:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 25 Jun 2025 13:55:24 +0200
Message-Id: <DAVLF5WB0IZU.3EZCARZSQO050@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-usb@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>
Subject: Re: [PATCH 3/4] phy: qcom: phy-qcom-snps-eusb2: Add missing write
 from init sequence
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Wesley Cheng" <quic_wcheng@quicinc.com>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Abel Vesa"
 <abel.vesa@linaro.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
 <20250625-sm7635-eusb-phy-v1-3-94d76e0667c1@fairphone.com>
 <4d215791-35da-4139-9cc8-33da5d46469e@oss.qualcomm.com>
In-Reply-To: <4d215791-35da-4139-9cc8-33da5d46469e@oss.qualcomm.com>

On Wed Jun 25, 2025 at 1:51 PM CEST, Konrad Dybcio wrote:
> On 6/25/25 11:14 AM, Luca Weiss wrote:
>> As per a commit from Qualcomm's downstream 6.1 kernel[0], the init
>> sequence is missing writing 0x00 to USB_PHY_CFG0 at the end, as per the
>> 'latest' HPG revision (as of November 2023).
>>=20
>> [0] https://git.codelinaro.org/clo/la/kernel/qcom/-/commit/b77774a89e3fd=
a3246e09dd39e16e2ab43cd1329
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>
> Both the original and your commit messages are slightly misleading, the
> HPG (and the code which is indeed in sync with it after the change is
> made) only sets the value of 0 to BIT(1), a.k.a. CMN_CTRL_OVERRIDE_EN.
> You most definitely don't want to set the entire register to 0.

After reading your message twice I think I've got it.

Code is correct, but commit message is wrong (it's saying writing 0x00
but it's not actually doing this in the code, just setting the bit to 0).

>
> With that fixed:
>
> Fixes: 80090810f5d3 ("phy: qcom: Add QCOM SNPS eUSB2 driver")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Thanks for taking a look!

Regards
Luca

>
> Konrad


