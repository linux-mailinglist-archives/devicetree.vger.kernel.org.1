Return-Path: <devicetree+bounces-267079-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKNBNJ7SmGlrNAMAu9opvQ
	(envelope-from <devicetree+bounces-267079-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 22:31:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A76116B00B
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 22:31:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 793083002D3E
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 21:31:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81224309F19;
	Fri, 20 Feb 2026 21:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AIMj9L0Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192E72E8E09
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 21:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771623066; cv=pass; b=HQYKZB02MfSxIfUdJOemwmu1+vrEtb40lIeNwGRXfnF/urNhdpyRDp6N1Lw4UciifRbhN0yvDkWfsCxq0zCRwz824G3WqjJYcKKgxhrqhj1SUiHVTX9RzscS9n2m2MqhrTU6JPEUf6QVjQ4u2PZpKi+uaSqIGwYFtw7W2wTADbo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771623066; c=relaxed/simple;
	bh=j2YnY99ilY51T44Hk6pBP8c5WmyCaOVYtJKwr53Ct4M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TbOt1UZdXHLLI0Nkuh/O9U4GTBgpehTY9T6qcq4uBFmHGEG8ITvNfQ8zUJB1/NUQET47zpz/wmvVo65wtYiN4w8ns02SzSWf7o6ekmU4i7zq2I2mhh1nDXE07z+BdbPog6PWZBHoJu5429xvqmYexjewg0gyIVFV8s7sc4zSLbc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AIMj9L0Y; arc=pass smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-59e60925251so2560911e87.3
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 13:31:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771623063; cv=none;
        d=google.com; s=arc-20240605;
        b=TDsqdZxBzAfX9fTO54xnhz4LE2S8O3a+DIbS9hdJJk7QfpNyP5YHQiewbDbzlh11aj
         jgU/M5LSNXMyhwVvApracguEdVmHSKK14tOQC9Rb0o9XIy+GEZaO/26yt3WZdrgfykiq
         UWlQWjvtonohNmojgRKNGPxLzfcVC2fLW7yq20t/bFzmKV+bNtyzoocuVyFcvxtYw24k
         M9OJxuOlo5JPQyKbqykfJuBISiYMucYGKH6faNCsCfglow+PyFPTsCdXGloGreKYJv1V
         qyMc2lI1Cml/jWds/SXqA02Kue/yU6QI1Dasu5V70caG6AkOC2wB0rEVKCBTgd1EysQJ
         +NxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=j2YnY99ilY51T44Hk6pBP8c5WmyCaOVYtJKwr53Ct4M=;
        fh=NXWGJwO/OfMojoRFD3ZvIXKYQ4amQtIJ+joo9p3/m5s=;
        b=NNfzlTY284JbyamN77/LF3UXVgi1nH2HuxcZVtj/pyZDgAWz3tT+LfTMKqPNz0NqCw
         +Xu/rwXSeqgY4DXQ4KDI3nALlhZocIaBi/JVJr1MT9quUeDZMvpu6Ok/xCuWs0K5aOvm
         Nr1X60l/Ad15KQ0m9EuNANHkFq5frMsOep3Ld43dLrKN/vNPQZUye7Jgnod2pAqTGS2h
         Ud0k+MQBHPdGmT8MYnCysgHryiIXWQ+BntBRpYX5bKvXkgwSvPDkxsGYBlo4M2ImenIs
         fd2yYuQ2F8hXb0dQzj1hoH0kgwYLQfMi6B/d2u+HjsruRBiAonNC6gloghYvpIr2bBeP
         BepQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771623063; x=1772227863; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j2YnY99ilY51T44Hk6pBP8c5WmyCaOVYtJKwr53Ct4M=;
        b=AIMj9L0Y0Ti0kCPTUtu8vL4n3ymVhCYGxyZalAoPHxZaz6uKOMGXpCYGl/kUAjMLlz
         55OlJW0Sh6Q6c6YaoRWNyMr0wfGraZLybp0973R7htWXJogU39p87vJJKMiahah+2TJS
         gGItDF1FHP7U35OAwgsfLDKJqijpk7sxnFnHcPA/pBHGKDN3X0qm7OkhxOiZSatqRVkR
         cl9jpmfzU2GQ0cUv/W23oBNV/Z1MtT4A9Oonr/49GTPMZYDVkskQEUyaRCb+O+29XXTU
         lXBoCeq5FoaUjC+1UjlKHYIZa7zE6VqQwssto3BuWFR+MQVIH37dpayCvAug3DofqCm7
         6zsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771623063; x=1772227863;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j2YnY99ilY51T44Hk6pBP8c5WmyCaOVYtJKwr53Ct4M=;
        b=TBiey3/dzB9CreADXZbjGS5PFcm4QAEbEVMHXSpC5F3LDTXX9ZBhk1yAg/LSnreQY1
         aM/mKxwdGdz37N/648x+bpkJ/PtktveE9luI0HC5UwiWbufy1lqjSMaI85tGzHq5clc1
         ySanAE7gcvg1SwQxNHmtuyBg8flHMy6B2KVU7iYcQ3PocPpgoG1LR9Pk0hCMENt42uy3
         PhmZEeZLyjiBsw4PP+3/vv7U9K2oXbTMCary/FthS3turqb3jrMpxXAnhuc9V7G4op0F
         FqobMaiTxK8koswMIro5VloV1+a01X6RYYGAl0yByH/oBjVssXB0jbbhmcuQ75v+a/xO
         eXQA==
X-Gm-Message-State: AOJu0Ywk5OFBK7Et2kNd5Lv4w6t9Bd6dnH+SbNBa3EUiSfhhDDV76qT2
	fbEGlbEIJRM22gk1qpwFEfESVhZ56ix3UXRdMy2/5dk8dFlpuU/IB/0VYLcy1IJjTHGdLh1+gMM
	aujR5LQYBfPTGUee4JiAnChJPvHhmKzo=
X-Gm-Gg: AZuq6aIzXUqkG3yXFveZ9RabtpGgiQVuXmxOPFWWwDct1N3W/zy4uKqQJ0E3CF+F7tY
	nPGWT2xsCtPY/mu6vpwpRcgV7yRbtWB3SQ8LjHR3sHDStSyQIW/ZHqXbYmfoETxZ63VFbFzqNp/
	/olZK9OrfzuW+g8oEnaeSWb3nfF/gAVuZWp/dyyvGe00sQt7p5J8bHJkdTqSe7gqc+GrPcbi8lM
	vTEcx6EjocMlcWZY293iADm6Z5VnDjjvji/CNZ3bAm4De94zAC8pe8o1owsECqnoAsbCKr2ClmL
	AKKuxJ2aDQDw7AeXo8JxAZtUWss/9d4A/AzB7Q==
X-Received: by 2002:a05:6512:2c99:b0:59e:34c6:88 with SMTP id
 2adb3069b0e04-5a0ed9a3697mr245998e87.39.1771623062940; Fri, 20 Feb 2026
 13:31:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260220021353.40554-1-rosenp@gmail.com> <CACna6ryBW-6b0UYaMq12Xf6bdgQV9AxYajb9use7g4o=VK59+A@mail.gmail.com>
 <CAKxU2N-UYZyUdc70H-=Em7ydBve5HP35agu7=pqozFTQo0A_Tw@mail.gmail.com>
In-Reply-To: <CAKxU2N-UYZyUdc70H-=Em7ydBve5HP35agu7=pqozFTQo0A_Tw@mail.gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 20 Feb 2026 22:30:51 +0100
X-Gm-Features: AaiRm52wkUXfPJNVFsXIiL0xPK_eCy3tss8OlPr83It1CXt3msr27JwAkcDh-GM
Message-ID: <CACna6rxvsPAt7PSy3y=+HiFo47d=tc2p1E4xjuc7LixHUU+G=g@mail.gmail.com>
Subject: Re: [PATCH 0/5] ARM: dts: bcm470x: set MACs where missing
To: Rosen Penev <rosenp@gmail.com>
Cc: devicetree@vger.kernel.org, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Hauke Mehrtens <hauke@hauke-m.de>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"moderated list:BROADCOM BCM5301X ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.05 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267079-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zajec5@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0A76116B00B
X-Rspamd-Action: no action

pt., 20 lut 2026 o 22:20 Rosen Penev <rosenp@gmail.com> napisa=C5=82(a):
> On Fri, Feb 20, 2026 at 3:21=E2=80=AFAM Rafa=C5=82 Mi=C5=82ecki <zajec5@g=
mail.com> wrote:
> >
> > pt., 20 lut 2026 o 03:14 Rosen Penev <rosenp@gmail.com> napisa=C5=82(a)=
:
> > > I believe these predate the bcm,nvram driver, which makes this
> > > possible. Downstream OpenWrt currently assigns these in userspace.
> >
> > Changes look good, I just posted one comment about commit description.
> > Thanks for submitting this!
> >
> > If you check
> > git log --oneline arch/arm/boot/dts/broadcom/bcm470*dts
> > git log --oneline -- arch/arm/boot/dts/bcm470*dts
> > the prefix always used for NS patches was:
> > "ARM: dts: BCM5301X: "
> >
> > I guess it may be preferred / required to follow that.
> I didn't want to make the subject line huge.
>
> Actually in such a case, would it make sense to fold into one commit?

I'll leave it to Florian to comment on. He's more in place to decide than m=
e.

--
Rafa=C5=82

