Return-Path: <devicetree+bounces-269568-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMwoAfzvomkX8QQAu9opvQ
	(envelope-from <devicetree+bounces-269568-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:39:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E241C3484
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:39:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A30D23028EB5
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 270492D1931;
	Sat, 28 Feb 2026 13:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nt4qaery"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCDF0222590
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772285943; cv=pass; b=WhVOU5NzAHLDY2t3K1Jxlklqc/HLUY1VVIwPzL7hwBENxRB5pC0sOxmKWEITK55JP7foQmqyJ7kkS+OIBMvNNA+sMvPmTomoT23+O0Qz4ck3vEUyS3aZ3BPdZ+IHN5tcM5NbEVj3DHJr3n9cfnYP6MOX/eYR/y8Gkf/EFumZ5/w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772285943; c=relaxed/simple;
	bh=2/mkzdfUtM5sKt5/jIrnmYiRivOOJwvLEA6tkiuRA5s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FRiH49XCI2cpNF9VZSzKhcCWNIIFvSYugbIiRLaJ/LFi2ftRPAz3+nFgcr0ov5lWg0BfGcuWT3G3D/+c+7n7ejxOTBjb1Fvd5O+V/cf3Avh3oTzkU4UaXBw8NTXsalhD+rGOXMyqCCdEmZCQqqregSCJ7gjOm5iTVZMVozfAs6U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nt4qaery; arc=pass smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-94de88e52e5so1962468241.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 05:39:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772285941; cv=none;
        d=google.com; s=arc-20240605;
        b=VjqvCPmn1itbJ15R1Rdo1I7TSSHQFr5YxrJuBkx9n8OABs5WNwqSIabmyZ2UvsCfxM
         SDHi5Z8WZxPIb9woDuZqhzWaT397ygpNhmpyt1VZhIMILeArwPGLvIxPCDYCh94ApN4t
         rAARhOF8GMiXgqy2HoRoSpywyTMgW4OBpUPmL6Fqx+NjwZor3ChW64LxW1UibIhv+n9m
         8HxJYm9NmuY2rgoDHgtMDFOQC4oXMuNrAUE1sQ4pdz4zpqGeG6oluiz66ulF5GYDnNYS
         BHQnr54NGc0eZgssD+HGKUilOXPiKBP8pFVZMr+Nv/gS9C7QRUCVfbBWQ7BlaaZk9xw9
         1bOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2/mkzdfUtM5sKt5/jIrnmYiRivOOJwvLEA6tkiuRA5s=;
        fh=TUxCb0Foof41gVffX+jCOay/xHM3k0kPS5PxdgNMapY=;
        b=MjnCj72hMo70wn/I8Zg2imZx7UkX/WwkxQrP7wE2TD1sBMd5pVYBDaOBeZswjrQX3u
         U1iR0ThoBUwkENn3Adbte6H18CpmA5RswejgP+q3A2m2abSVt/YW/5dAH/oemriLCefs
         dRO7EmJ7GPV+j4N4mWPveHYQOWZeE16KfsvjA3q3sAOrVHYolhYxfcR48aOCv+OtNnCN
         w+foTEEikfQ7fSa89k6rNyeSrpLRWTZioqAvm4VUngoRHPea4PDHUW7VUSmpCufWL4gm
         /E2tnAA9Ey0rlH8vm+jwhK68UDlWzZD/x+GQd07pKYhKoaTMcqDzJWivm57EJqBNG2Kd
         PmrQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772285941; x=1772890741; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2/mkzdfUtM5sKt5/jIrnmYiRivOOJwvLEA6tkiuRA5s=;
        b=Nt4qaeryReSDRZpCVnoZEE0QyPQVX/RAdQFRW2TI7VbI/g6bI4p7liaBWZD6aGQaQ+
         tapXI3GB/cYI9YXIrr1HWMjx1SKuWOuc22VY/CU28BwwouMM/te2RoAXz7ZshsN+DHBp
         V5f/q0a1evnRtPRGRLPLeBz9koQKv2+kb0RdVnD4B1nvFKHNdxlljzaAulho3+C/PTrL
         Ajmp5LhCZiJF5phbq1LJ7ZerbKRbGquPEFyjh3K7VOO17bOqUr9WEntOUoQN82S1KTKl
         /AjpfYxFA37wQ7nM3ZHxccT7/tDE21C2Sl21vQn+dzUE0HkpZjNrh9WH+3zzrlV25KDG
         6CrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772285941; x=1772890741;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2/mkzdfUtM5sKt5/jIrnmYiRivOOJwvLEA6tkiuRA5s=;
        b=MGTl6SIfFEw0BUq6hq9OKx6rIFzRI0oy+VGHWcLulvPEmrRR1Kmw19SvYJV8kmQCto
         Idm0riYEHRN3TUslhyH7WBj32YS0fvJ96VNH+eC8GPj24zcFFei/ddpU/IVuXn2OnGT1
         mcsf/67GKuIkL7mUmal7wNQxEBQhlSBcE4ha1t457IoJ8ZGv+kj0NrWAUDh1497OhHXi
         RpHBDJ4zB+n2Hlt/2+6+dIZkE6SNwEMiDR8bdCg1+m7lxXBMCGEMnVwPC3M0eTabinIB
         JP3T2JqLhReesFleKYgpoNyUJGIWLrp3GThotjnhd5mhgQwtkq98IOuaxUYLI3q3X95y
         lFaA==
X-Forwarded-Encrypted: i=1; AJvYcCWL9dIb/RCMmVlUVgzsJFzUrQsluBtp8JRRpXHsc/0hn94IZMAO0f5rmjojGpkmxm07Ka5T7DC8Sz+m@vger.kernel.org
X-Gm-Message-State: AOJu0YyAs2w15z6F+BId42SyD5o1mlesiwiTNmzPmVQ5VtQV4UX8QLA5
	JIR5lObuIYoyYd7ZVC0tnoMqVZJ+hT6KJiZNBJ/fJu214Ok7vTT7OGtXf5GNkXKHeIAjKCY0/cq
	db6K0J1LZMmyGLkNy0U5WhyxfoWz3Qk0=
X-Gm-Gg: ATEYQzyH+67edfF2qDAUujYNMlGMk0/5wwqSMFI3tD85b63eSl0CoYIafEsxkXj075/
	X2jowlP+0B6sYs5lr/HjDwg6xe1AEs4YfF48yZce2tbBsNrGDQZKpHwfKl8MnzU97JlfI/c5iUI
	V8NdaVl29yg5pZeQks+AFkeMjCzwlQtc80VqcDqq/3TaOZIib5k/VmV429kAe4BP4BgSHRQwHj8
	ZSw3MRxS9ubKvo2GyG2R+f91BhNFl6EmtPIbZqT0/1Q0K5LEQwusoSH9Se4u5LAfnc7QFsuASUH
	N1Pe73k=
X-Received: by 2002:a05:6102:510c:b0:5fd:ea66:92cf with SMTP id
 ada2fe7eead31-5ff32331fecmr3377154137.13.1772285940819; Sat, 28 Feb 2026
 05:39:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228125431.23098-1-mitltlatltl@gmail.com> <awrfjdwsf4gyyg2s6ppw4jfmpzp5s2aavosmspsp26oqccco7y@csij6bpnfpu7>
In-Reply-To: <awrfjdwsf4gyyg2s6ppw4jfmpzp5s2aavosmspsp26oqccco7y@csij6bpnfpu7>
From: Pengyu Luo <mitltlatltl@gmail.com>
Date: Sat, 28 Feb 2026 21:38:43 +0800
X-Gm-Features: AaiRm52sUtO_METgNFu756gB0XTAtSpZIFzTwMVreavJUvCIzU9icg72BbD00pE
Message-ID: <CAH2e8h75H5ZZ88pkFYTwr5xir_giW5DxV16Pvo1_DFQuqWGFKQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: use refgen regulator for DSI
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-269568-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 56E241C3484
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 9:13=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Sat, Feb 28, 2026 at 08:54:30PM +0800, Pengyu Luo wrote:
> > Use it for the DSI controllers, since DSI nodes have been added.
> >
> > Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> > ---
> > This patch depends on the below series:
> > https://lore.kernel.org/linux-arm-msm/20260228101907.18043-1-mitltlatlt=
l@gmail.com/
>
> Why was it not squashed into that series? I'd assume that DSI nodes are
> incomplete and are working "by luck" without the refgen supplies.
>

I had completely forgotten about it until I found the patch when I was
sorting these old day unverified patches. At that time, I just sent
DSI patches. I will put it into DSI patches.

Many platforms should work without refgen. Bootloder may have
initialized it and be untouched later? Once there was no refgen
regulator, my sdm845 phone worked.

Best wishes,
Pengyu

