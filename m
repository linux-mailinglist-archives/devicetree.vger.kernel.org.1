Return-Path: <devicetree+bounces-234346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BA35EC2B999
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 13:19:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C7D524F0523
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 12:17:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 804F030ACEF;
	Mon,  3 Nov 2025 12:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zC9ft3RB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E6D5307ADD
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 12:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762172236; cv=none; b=syONV4mt8x0x83Ce0RDcpzQ6apzI9zrGISR6tHihDGJVjPEB4JgFs5m7x32oESbS46OBT33+9MPDtWsnxaG5Tx3rT9CkqM8llapEzXQfkOP/Dcw4pgRONI00Q+sLS1sSFURMSDQZGgFljrdtyE35WaCqEvxQl9SDONxgfkXeoZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762172236; c=relaxed/simple;
	bh=N6dzLqWRKXo3vdjPNtp4WU0RNAGv8JDAOdUXXVowYMU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=WNK3JRpAkSuxmAIfIZmeFY6inmK86/NfBbcm0R8p22FuxWENwZ4cAJrvMafW4YcUP2NDBJZBEq1gKD22Sa8LiWTBq6kyoC4PvnjS/zISX8gNe4lpAt3ejgCH87Km+pWGhvxKtz1Uw/1IR/DEng8NLRqB9aoOGW0hwXU9QAaIYoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=zC9ft3RB; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b70bee93dc4so117069466b.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 04:17:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1762172232; x=1762777032; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aNjT7Aiq5Dh6jiEB8sw52p14qgaFnxeV2nRWidKXfx4=;
        b=zC9ft3RBWag/V+c4hsCUTEoIz0cffEe3V3R2CDajBFXXkVe2pm0bDhvl7lNKRLQIrq
         spwO0fb0gLqktktSW3Mh1iTK/dS6rW582Ewl8JrbaSsAbE0syaRN+BM4SJp0d2g6ZlLq
         2xl+67Dod/VLo51R1ncoCrhoCyaCRxsNbFAlqi0CnOKodq4xLsNlEfAxteq87mULbxPU
         OzIf1wYjaaRE6AXA8Ery/wcNRvedXLjPlxS/Fue98UAVeo91zmq+yjk4bVAFzLufeF01
         WdoES5CFbHlIhtxgm/lAyDMnTYR2zJHlSk4unA+ElbdgpUT9OlSj9GjCQu6AGxZbG15Q
         jMKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762172232; x=1762777032;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aNjT7Aiq5Dh6jiEB8sw52p14qgaFnxeV2nRWidKXfx4=;
        b=IWD6+g32JyVZtJkgfEhEViS2izs3Z6yHtGDT2SiJCGYGSLLubU8C8H4duZNb4LScWZ
         Jc+dvsZaLsKdeZiXWt2Z43Zas5XmDNS4RmELnXzhyZyZ9Um2PqKXacaxCOf02JQWneov
         mbtEcyWJNAKBCH8Qzb8kcL4uHiFmBPBf+C5uuZi12VoDX0a1iTipCC3uothSnBrYvigt
         142t/XP/dOxp4g7Ki6fSU1YSnSuW4u7empf0hyrjfoe+et4EOn30Q8GMqtrwoRk6bfGv
         FcAS1sYq8EvuTkj0aEMkO+ArhF09YC+t8C+0MbFlpAuVuiC7VgxB2IOSWIehZ8fOAflD
         Jowg==
X-Forwarded-Encrypted: i=1; AJvYcCWIShA2aR0EQ0bvA5iIOhNBBW3Ah5Vo4OlHWHtP+DxHxrbAV4MHFsH1ytvzns1JcgOYqFFZC4GPb3Pz@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn3CKX9HiAX7P/whJm6Mnf406JqMDdyMo/MlmptxHwtClBcYt9
	vIIFYYKd+FY158YXd/kerHmz2jPbFwA4xDI6jgUBPrCMnhS5a0uKvIcMPLcC2gpiTiY=
X-Gm-Gg: ASbGnctOu7MqRwE4ZBU+pKiFK6e2BqQ2lM1luiMBmwpfxOsxzCDjmIgV2iZT5tDhdSm
	BBYviH9ifptVb+ex76uFW+9kfKpqofKKgjfAPTlZ3dKWbdM/usxMtOZ4b7dpe3Z/ApwYRVLa5qg
	OXKc5KAikBRGzK/V70/xn2Jyo9iKRzbbOEJEho9sAjljlhVouZ1eOE9Li9KrJUeXEaOOEfbng4s
	vik1t5tBiunxlO9DqClRQTAELgTaFZyTuc/6BJL3jhIrRWlPVcdDOfZlIKZu7mj/SiXuvLic2Xp
	xKHZefg9YTRn/qu6HV18dPKa4q1ztquAX4NxIoX5FpXo7/NZn8z+kVR4cTpEIPeJSvK21YmVdPq
	L/Y2dgypNBZVWzEC1v2A4hzgpJQd2Qn7meZ0fFtQRTMc0M8gYXoRJs4qNmlmNs64pBhRCIFv48J
	zTCBmbrnxelLk+gMLhgPVtstIz+BKWMREulNKXAKg6fcuTkzXWowlubV7H
X-Google-Smtp-Source: AGHT+IEKZUv1KyQWAizLeoG+U9udqAbGU47hQIHv4aHNYJKhylIq0YUcjZYxg94xX07JT/Vlq4yG1g==
X-Received: by 2002:a17:906:f5a9:b0:b6d:519f:2389 with SMTP id a640c23a62f3a-b707083253dmr1286167366b.52.1762172231791;
        Mon, 03 Nov 2025 04:17:11 -0800 (PST)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70bedcec19sm332233966b.7.2025.11.03.04.17.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 04:17:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 03 Nov 2025 13:17:11 +0100
Message-Id: <DDZ1X799V2KV.269J9YL1AGCIF@fairphone.com>
Subject: Re: [PATCH v3 0/7] Various dt-bindings for Milos and The Fairphone
 (Gen. 6) addition
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 "Viresh Kumar" <viresh.kumar@linaro.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Herbert
 Xu" <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>,
 "Vinod Koul" <vkoul@kernel.org>, "Thomas Gleixner" <tglx@linutronix.de>,
 "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-crypto@vger.kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250905-sm7635-fp6-initial-v3-0-0117c2eff1b7@fairphone.com>
 <c93afd94-9d94-42fb-a312-df6e26bb2bc8@oss.qualcomm.com>
In-Reply-To: <c93afd94-9d94-42fb-a312-df6e26bb2bc8@oss.qualcomm.com>

On Mon Nov 3, 2025 at 1:14 PM CET, Konrad Dybcio wrote:
> On 9/5/25 12:40 PM, Luca Weiss wrote:
>> Document various bits of the Milos SoC in the dt-bindings, which don't
>> really need any other changes.
>>=20
>> Then we can add the dtsi for the Milos SoC and finally add a dts for
>> the newly announced The Fairphone (Gen. 6) smartphone.
>>=20
>> Dependencies:
>> * The dt-bindings should not have any dependencies on any other patches.
>> * The qcom dts bits depend on most other Milos patchsets I have sent in
>>   conjuction with this one. The exact ones are specified in the b4 deps.
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>
> FWIW this looks good.. where are we with regards to the dependencies?
>
> Are we waiting for anything else than the PMIV0104 (as part of glymur/
> kaanapali)?

Hi,

From my side, I'm not aware of any patches that have any unresolved
comments, so I'm essentially just waiting for the correct maintainers to
pick up the variety of dt-bindings patches in this series, and the
PMIV0104 and PM7550 series.

Any advice to make this actually proceed would be appreciated since most
have been waiting for quite a while.

Regards
Luca

>
> Konrad


