Return-Path: <devicetree+bounces-259210-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CXrVESxodWkuFAEAu9opvQ
	(envelope-from <devicetree+bounces-259210-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 01:47:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2157F65D
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 01:47:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 558393001FFA
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 00:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EC93339A8;
	Sun, 25 Jan 2026 00:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JTTtt5HT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C35F513
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 00:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769302056; cv=pass; b=VSvh8xSjCAhIawwLXoFtiaBn5rNsp1pgLldNTO/pzOgFJkqkzJ/z9tAd05iyl8jQqMfVg69tB/H5b6oUHZQslB34SONrCOJ+AO9PkNbBnP+fkKR6gJr+dH1WD5d4x8DP5W5ZUFMxdcj3P5HEg/WDfWDX2V3G2z0IPM29nWEnlhs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769302056; c=relaxed/simple;
	bh=j68YDE5pzNwD2H8rjYp9JKTi/bC7OMC2aw3wLnja6CE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qdqY2ldDbo77mVr9FLkl6aWa+Z2uslrdBcHoc7+MYZ+lidrEYs761rhjxwIuRnziKhyW+iqvU91yJekDWo2lxPRaDOBwo0sQvIonR/iuMf+vf7oWf7AHBWGEroXInUEVpE/0E3yNTrAHQwXCv5fP8U/YTQQx+GbISz4eu+Q0tuk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JTTtt5HT; arc=pass smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-6582e8831aeso5099199a12.1
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 16:47:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769302054; cv=none;
        d=google.com; s=arc-20240605;
        b=cERgkKaRel8QcgiZrYPknuK+qcsMNauU2blufqbU/evtSTEhsHCmt1qvJxX/L5fa4d
         2UYF/eA3o1V+F7bb9t9pq/iqFYin89Pb1TuG3TY/zF5u1FABjg+0Xyvt2mPmAAmAJxqQ
         yM3DkZyo9jHQG4s7waNKJMYBwQn/d7DW1eD6ZK35oeVzJzc65B1E2yaZk5RRbkSvbOWV
         h0ZUDiz5myJGUAc5Cr/Omb8T53TkCU0UM9fS0sQz0jZwyK0c1DoqjVxwiX4ONRd7nA36
         eNg683wcS7ZBSs0NKxHPUzqNH9QcJn2oNwiXr0khH1c/avaekqVMFjoSF5GR7SU+qzE8
         3xWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KaSAerxnhUHlMoEW4LEuB3JLwXOEBI6R2O75mA5dTPs=;
        fh=/nS2OSf+BASfJlCrjveUUz7HDv7M3CrIIniO8rqBT8w=;
        b=GaXlI2Um+jMgw6NjFA8s569I8wbnqo8oZrcqd/PrtvLRwzDCfsuGxUtbgNioeymFeh
         z6qFXkWkUsgr6Ue/pq267eF5PtfJ7bJA07d0jlP4cbCZ2AlwdyUF5Xv7UBfy/pPxkiVH
         PABNNfjCeVCEJmgqXjuRyTwZZR9kyC1BmxnIewGT2C+/fQjor2O1bO6G74xD7m/5v1HC
         WqSTiH6ih0LTFcS/01o7l5uHX8bua2dvMyXzwwxn9CEIaGPnRrQEwVXRMRLI7folsGEs
         ELwFqUJbys9ZFm2PAgAd2rvK1yscMDQsdDrsnYopL5g3fjKsMxCFf2yxaRYtAw2w8kJt
         i1Ow==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769302054; x=1769906854; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaSAerxnhUHlMoEW4LEuB3JLwXOEBI6R2O75mA5dTPs=;
        b=JTTtt5HT8wcXKjNCPP+6B4MU0SGiqrxsIIOrUEsCstcHW8Z2HH5IZuqmzqCzpva82f
         x3Dfd9fuQp1mCDb8NRX7TTfgEZt39CWfUW1+zv7k3r/S7OwI+oIknNiG64/MiMBR63S/
         2tffV+rRqYMnfqSIWf/BFUlDKNYkyXQIWzKfi4045k0Olm9TeKwXDs6bSLc0A6fi4QcY
         xxe4doCX5pMAz0iBaoep2pVM8aK5MVcMoZMPsV5IgOqXMvPMp3xBy6dDtKhgLKkjpnRz
         h1puAss5ENg8SSD7sTZ6r2pVyDAvY7LYMkehynFeWphVzznqusG2ilTFwAGJAOh1ER70
         qlXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769302054; x=1769906854;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KaSAerxnhUHlMoEW4LEuB3JLwXOEBI6R2O75mA5dTPs=;
        b=TryA0n3zOOTVURRbnerAPrEEGjh6nEqY1l/w/uAiR2exZ28REy5b5ceN5qSoXNL472
         +nswDX76105VsREi0/dNV6bTYtvMFaEETUDPW18gv4GgkWNVsBRHWdEYqAXsZ7WtiKC0
         Y+Jdzy7E5jr4DF8zlxrBTJvujvUccJTXWwP5o8L2kqSC+hgol9cvVCUZLFLgQtBENzIQ
         zJINyEP7AXIgnSgMJxj0gEL6zVY0YW5qbqC0deey/rcX0gyRjkoGXNAVCntZyfzE7e9N
         gkI4R7mHW/+sN7kDFj4dGGiYwPIhlZnxyI/SF3ZfdJT8Tt5eZY6a6Xc+NAdfNpM5wP/D
         ASOw==
X-Forwarded-Encrypted: i=1; AJvYcCV6C0++SKQlL3UAmSS7tT7p5nkLtNWK2WyNtt7kJsvnmyzfj/GrcfPxc9Jbbs4zjjAn9nA9N46m2B/U@vger.kernel.org
X-Gm-Message-State: AOJu0YyEqgdKko/fHnrSzBAK29KhlDdtyi5L4AtB9A3wivzD9hXNiBkG
	Acc5QeMlRRpS6ar5FaagAMnAwFiSvMg/39FKIPxrjTMDvc3kXrKjncG/34vHsVwBvABiBvQsM43
	9D4GFiP2JhATTa2AuQaAU/DGJbZGDllVzMVmJ
X-Gm-Gg: AZuq6aKds2u0RH2ubcnmkr3GudX8lMjsvOuLuFkNdlXF78WSZ7RLVm5xT/S2o14m4vH
	rB/umUi3NbjQoet55NmyqTlo30A8mLWTbeeLN8TAPzB2AJxOAZoxIMEi4+iWPljGFD8OcoE3Ovi
	B46MOjJeCqswzV37YXrEXA0IXcN4B6gkJDEzQ5FctdHD+NtPZozk3nd9U2eRfFWZKhDpQjLewzg
	sonAcfLvOhK6zrG7eG2yturJiJrZfL6iqui7rZ3ru89KTWtp0I1Fc+CEVHTMkEzuybQeGH4+m6V
	WWEkecA=
X-Received: by 2002:a17:906:794b:b0:b87:6b9c:6386 with SMTP id
 a640c23a62f3a-b8d2e883dc6mr19707866b.56.1769302053616; Sat, 24 Jan 2026
 16:47:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251211-sm8750-cpufreq-v1-0-394609e8d624@oss.qualcomm.com>
 <20251211-sm8750-cpufreq-v1-1-394609e8d624@oss.qualcomm.com>
 <CABb+yY3v7RQTEvnd3g94ntY-COHwKcYPuDfh77bEKzZ-PS65EA@mail.gmail.com> <7ed55d7e-869a-43d0-8905-c7d9263ca505@kernel.org>
In-Reply-To: <7ed55d7e-869a-43d0-8905-c7d9263ca505@kernel.org>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sat, 24 Jan 2026 18:47:22 -0600
X-Gm-Features: AZwV_QiB7PopHFl17OYpGtV7RF86gL2WZmVdv9UWEB7fLHh2IOlzT3taAeKj57M
Message-ID: <CABb+yY1kKJTxEcbYvoHr+7w__JNKEyKXML2RcMxjz2AvQM2c_w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mailbox: qcom: Document SM8750 CPUCP
 mailbox controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>, 
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Ajit Pandey <ajit.pandey@oss.qualcomm.com>, Imran Shaik <imran.shaik@oss.qualcomm.com>, 
	Taniya Das <taniya.das@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259210-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jassisinghbrar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,qualcomm.com:email]
X-Rspamd-Queue-Id: 8F2157F65D
X-Rspamd-Action: no action

On Tue, Jan 20, 2026 at 4:22=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 18/01/2026 20:40, Jassi Brar wrote:
> > On Wed, Dec 10, 2025 at 1:02=E2=80=AFPM Jagadeesh Kona
> > <jagadeesh.kona@oss.qualcomm.com> wrote:
> >>
> >> Document CPU Control Processor (CPUCP) mailbox controller for Qualcomm
> >> SM8750 SoCs. It is software compatible with X1E80100 CPUCP mailbox
> >> controller hence fallback to it.
> >>
> >> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> >> ---
> >>  Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox=
.yaml b/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
> >> index 9122c3d2dc30fade96eaf54aee41f890327deb6c..9d99af46e531aec615f91f=
1c139ce4fa482e41c3 100644
> >> --- a/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
> >> +++ b/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
> >> @@ -19,6 +19,7 @@ properties:
> >>        - items:
> >>            - enum:
> >>                - qcom,glymur-cpucp-mbox
> >> +              - qcom,sm8750-cpucp-mbox
> >>            - const: qcom,x1e80100-cpucp-mbox
> >>        - enum:
> >>            - qcom,x1e80100-cpucp-mbox
> >>
> >> --
> >> 2.34.1
> >>
> > Applied, after trivial rebase on top of "dt-bindings: mailbox: qcom:
> > Add CPUCP mailbox controller bindings for Kaanapali"
>
> Both patches were already applied (see other emails in this thread).
> Please drop.
>
Dropped.
thnx.

