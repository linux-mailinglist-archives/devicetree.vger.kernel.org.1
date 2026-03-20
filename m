Return-Path: <devicetree+bounces-278105-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEPWFx3+vGn15AIAu9opvQ
	(envelope-from <devicetree+bounces-278105-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:58:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF7E2D6E69
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:58:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F2CD8300B9BB
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B9B2363C4B;
	Fri, 20 Mar 2026 07:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="ESQtkPJh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6721231DD97
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773993496; cv=none; b=TJnongeBmGIreAdOjczYdC/kZhamX8y3LYW2taTt3e4HjAjYBLQsR8sgSe57dQr/AKluxsitQmUh9eIcucfRh3IqD+0aP1IV+hFIfj4EegDtUvWp5Dxo5XuHI5En+ShDCgDkIm8uOaNVHkltbrF73KU7BmGrWGw5GBHovAB0cfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773993496; c=relaxed/simple;
	bh=9eDed6TPehI0qw7uXAXp2VHk1yY3TdAoNKukjEeQP4U=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=M/c0w+TlX7TbNPE3yZQyqhzjavgCf8CwqrkJYIDBD87muZk9mrdeBINT+uYBWxY9q7G7TxRTgLog90M6ZtdExLQY0REQl7m+QYIIkiQBzKsTxR7cqqAgkQ3zEPGsCqGVP6DadSU2yZh/T/dL/rySsMxod7uHwezXCDfIc+uUBMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=ESQtkPJh; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b97ed4ad579so55153666b.3
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 00:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1773993490; x=1774598290; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9eDed6TPehI0qw7uXAXp2VHk1yY3TdAoNKukjEeQP4U=;
        b=ESQtkPJhQT4pk5U+DgbtjMfLeXxvR8M/HtCVxCfaZkx7k8Pw4S9z9NISRDUgrmjCXi
         VGx6CkgW+ME4yG8v8tpYhH8KGqhZg0B84OVm1drfOZS6X+L/CKSlTsBHL2c7jlttwMGZ
         W5UZy8SObvq/NGmZBm1+d9R1pp+e2JmUEmpLCuX4u2UuNIONJecDj6QAGiCTwceBiQEZ
         eqISmnRFmuaj3YWLGK8UTL4ingazOqdjkeg4wmd6QSxSgSKHooSLfDbRxYOrL7KjPE7p
         cqso/AAH8aVjVmFoH9/LkbycXymfKWCIpeh6MQdtmdWWQjqy4WDGKAN4j88KSSJFLpWL
         WGTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773993490; x=1774598290;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9eDed6TPehI0qw7uXAXp2VHk1yY3TdAoNKukjEeQP4U=;
        b=GVdU7JMJP8mnebqyBPBhOe4cn7cpme9U/oC8mXzlCfahaMiblKbvXAqV6DsByLnyF1
         Lw+VXBZBgwxRrW1bHKMbLqqNw0NSf9vMJp2WMlkuqUWOVzFnuGc7p4wCz4O8EyCODRt7
         wUuwNNAJPxjW2xhwg+aG6oIclHBP3bsr1gfHFKG8M0dWcEwOz53LJ2C94pn50+DV5M0P
         9c6sRVJRXoUMLg79wdLd9rO84BM9Mkkoayb1hcFb0uU8L/+YOJ7jKj5PpnPEpS4JU9nn
         bC96JJ5wdYIsEFamg2le8N7rq8ruaJAoLkW9xT6E+tgOa7RYdJKHpBn7+oZGr69EiarZ
         VHFA==
X-Forwarded-Encrypted: i=1; AJvYcCW5MyX3ZcUF6Au4b92Lxyjc2l11CSApINf9PDM0tNknH/If9DIWfkZXx+9dVIvUJ/d732XwNBA3soqH@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6Yh6Ab6Y9bNMfqZVRUyK7e0vZ4SF1I5tvfbPaYUQMgvbMYHkj
	HWkOQ2Vx8Fwuq3lXOVxmIn7yjBIA04z5x0pFQePfu+vuR9YBlsvNSbVW0PmfvzE8Ek8=
X-Gm-Gg: ATEYQzynNzl3tQXRQi2SpvGKc+i2giAALGZ6+lOdBIjbiVTBOQv0QMsDHwIcOxeMgMd
	0oiKFZ+0jIGphZScOFqHQF8zXuby1JLUbzoShLj2yu34lCrzfWbFDG5V4lPmeksriJAm8ezkNZ/
	ucBEIXBS2RPG+uK6gkRwApRK6PvulYPTb4Uqpyd1PJJb6lS7Qtqnqg/+pteiCCW82bwlj3eFG34
	2cRN/mVEkqTwsRbykbhsVCjfCXfyvcbxcpolTAW9bZ5bInvQETkuyp342s/jHoFgkIA7JwVh6EP
	Ei5BGsqBYE+EuTQZYFfpM0Ir68FjLlNOgeExmUpTIUKmtHxcRD73cgOUvyETTItVdy3VSZFdF75
	n2eFNCwepupTCgbLsSV+mzHBL7x7Ep3Q22hv8WI1VGOnlBQkc3iDj9sOV2q3WNnOiIIBDJAuMTU
	kcYmaKVT0ZnW7DsVoy3YfhNHtmujc1FesR7DvOS5T7DoHL7FdEk2NJNyWKLRsf8zcrZVAM
X-Received: by 2002:a17:907:6b8e:b0:b97:b6ef:fc8c with SMTP id a640c23a62f3a-b982f25c0e0mr131299366b.23.1773993489994;
        Fri, 20 Mar 2026 00:58:09 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b983365dbe4sm118826266b.47.2026.03.20.00.58.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2026 00:58:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 20 Mar 2026 08:58:08 +0100
Message-Id: <DH7G7HV3PUXB.16AVBPYQDC5RD@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Luca Weiss"
 <luca.weiss@fairphone.com>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>
Cc: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Bartosz Golaszewski"
 <brgl@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Loic Poulain"
 <loic.poulain@oss.qualcomm.com>, "Robert Foss" <rfoss@kernel.org>, "Andi
 Shyti" <andi.shyti@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>
Subject: Re: [PATCH 2/4] dt-bindings: i2c: qcom-cci: Document Milos
 compatible
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260116-milos-cci-v1-0-28e01128da9c@fairphone.com>
 <20260116-milos-cci-v1-2-28e01128da9c@fairphone.com>
 <20260117-obedient-galago-from-eldorado-8e0ba4@quoll>
 <cb2430f2-8601-4c72-af6b-10f1ff16c188@oss.qualcomm.com>
 <DGDV2EMXHDS3.2377AQBNDDHAV@fairphone.com>
 <DH1LC0C4QD0Y.1XKV1PWFCBQRN@fairphone.com>
 <jexys4ypbizesa3whuvtq36t6hpqm4httlbwtzkulz5pld4yul@lf3joaistvfb>
 <DH41T22PJEW9.3EO3P50QRXG8H@fairphone.com>
 <7d3f650e-38f3-44e3-bd70-319a16d142a1@kernel.org>
In-Reply-To: <7d3f650e-38f3-44e3-bd70-319a16d142a1@kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278105-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.982];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,fairphone.com:dkim,fairphone.com:mid]
X-Rspamd-Queue-Id: CCF7E2D6E69
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu Mar 19, 2026 at 5:58 PM CET, Krzysztof Kozlowski wrote:
> On 16/03/2026 09:03, Luca Weiss wrote:
>>>
>>> I went on and checked. No Milos's soc_ahb !=3D camnoc_axi. They serve
>>> different purposes.
>>=20
>> Thanks Dmitry, appreciate it!
>>=20
>> @Krzysztof: Could you take another look at the binding then please?
>
> It is two months old patch, so for sure you need to resend it, but I
> gave my tag now.

Your concern was addressed in a reply in this thread, so I thought I'd
ask for your R-b here, instead of sending another revision where you may
not feel like your concerns have been addressed.

Neither option feels perfect.

Regards
Luca

>
> Best regards,
> Krzysztof


