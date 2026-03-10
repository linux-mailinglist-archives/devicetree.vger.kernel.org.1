Return-Path: <devicetree+bounces-273618-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Nb5B4hBsGlLhgIAu9opvQ
	(envelope-from <devicetree+bounces-273618-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:06:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7203B254440
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:06:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4EAF63045022
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:01:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E32BE3BED08;
	Tue, 10 Mar 2026 16:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pta2002.com header.i=@pta2002.com header.b="AIgMtdVo";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mrs1.rp.oracleemaildelivery.com header.i=@mrs1.rp.oracleemaildelivery.com header.b="g8eQOnlN"
X-Original-To: devicetree@vger.kernel.org
Received: from abi149ajj126.mrs1.oracleemaildelivery.com (abi149ajj126.mrs1.oracleemaildelivery.com [129.149.100.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC7F3BE653
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 16:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.149.100.126
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773158515; cv=none; b=IdB04U9CkJhZ90lGSID4PcB5TYcTJqQ5mhmhKUt31/KRzN+YDS04dL0CGm1OFSW+Oo/kDlvH22UKut6EuBAIl7UQbDrz8cRTcvRGZsmF+dKpxIReA9iQ/Hih5AKxXu6vGkhKNl0AxkehsncJ+EviZ5VwJD7rKyFvDUYXoLXQWGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773158515; c=relaxed/simple;
	bh=j6vjTGMn2sDnEH1qEBglPOB95rBL96vrjHwxZ4lygUI=;
	h=Message-id:Date:MIME-version:Subject:To:Cc:References:From:
	 In-reply-to:Content-type; b=okCTdoFWRQYAjQVRR6fNDTMIoaHZCVS/+BLEFwaoMU4BivXyut01BN8hfQbw/7rko+HiYJ/JrZtfcy/i5TWQ5boWNjVFePOut4hYgGRB+uy0c+JvbllFZJgWiHWXMW0ck1PDCC1JZHAxsMepQ6TuKR28UD6eXcxmfivthDcKBnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pta2002.com; spf=pass smtp.mailfrom=mrs1.rp.oracleemaildelivery.com; dkim=pass (2048-bit key) header.d=pta2002.com header.i=@pta2002.com header.b=AIgMtdVo; dkim=pass (2048-bit key) header.d=mrs1.rp.oracleemaildelivery.com header.i=@mrs1.rp.oracleemaildelivery.com header.b=g8eQOnlN; arc=none smtp.client-ip=129.149.100.126
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pta2002.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mrs1.rp.oracleemaildelivery.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=pta2002-202603;
 d=pta2002.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=W+2PgkVfhOOGh3JhpM9bXs2EFaDZYgebhRwlkHsFdtk=;
 b=AIgMtdVorn90PogMThHQEAney2bfVcadXL2Y1Uz6v31yg/Eo02wBq9MQHGGM411if+PiB2i0koih
   Kkofbg9vrdA0Ai89f7nJWUWq9i9ebzy4anDmqoCbTOnNz9IKrQTx+hIpkkug6sJl9s7h1udY3Pt9
   NO4szfyfPjpeEjNs0DhKcVsbr/miKJfhwJc808iXXAGeqidbIc5jsXytqxkgK6mwhcaioQQMG5Bh
   pKi5A7IFrlGFL9GbZBUkd+OfcHvwGnfKkwtoErkR/6jhIS9D9fXQHxJK4dbl4yK0omCWR1ZpT1YP
   1tL7WFIzIz57utOekyVwTxMiKscNJkjS5vBlOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=prod-mrs-20211019;
 d=mrs1.rp.oracleemaildelivery.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=W+2PgkVfhOOGh3JhpM9bXs2EFaDZYgebhRwlkHsFdtk=;
 b=g8eQOnlNiFM0CLCl7EpR4IXvMV1aYSx26D9gf1xY7a95qHFsA2xkruXDC+3FO2LtlsW7fNu3cYRw
   peU5h0Q6YqR6UNfPjb/ZDDjfVepdU1TU/6nYjDM8bLM5v/K997Tk1vEPD7cQ4LPaW7QrxjwaefAT
   SzaDb1CxwsghQz1MVMiZZ/o60go3yvkP8QBUaE1hZvo/guTx9qB87+FTlEo895Rf3IvgO2hNATAB
   6vuCIGqqPbe3nORi21TuH0qpKVk7DZW+L+cSxhiXuT0mUk17j53cNiBhPYWJGsjNUvDdcU4pei76
   q6xZ1UlpyFXq0hbTLStGJHz9h3Gcd2W/HRweYA==
Received: by omta-ad1-fd2-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com
 (Oracle Communications Messaging Server 8.1.0.1.20260212 64bit (built Feb 12
 2026))
 with ESMTPS id <0TBO00MISXV40W10@omta-ad1-fd2-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com>
 for devicetree@vger.kernel.org; Tue, 10 Mar 2026 16:01:52 +0000 (GMT)
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-id: <e57dc0d0-8fad-4c55-ad53-d12cbda480b5@pta2002.com>
Date: Tue, 10 Mar 2026 16:01:36 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260304-radxa-r5-itx-hdmirx-v2-1-6567e9e3298b@pta2002.com>
 <9638846.rMLUfLXkoz@phil>
Content-language: pt_PT
From: Pedro Alves <pta2002@pta2002.com>
In-reply-to: <9638846.rMLUfLXkoz@phil>
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit
Reporting-Meta:
 AAG0WhO5h6ltxXBJpWKRec1eA5PLxwyFz98OXlRfhTRnD/LE/iOtviDjy2/UiPp4
 KvbKjhNYzrpc8DwWL5pCTOhjKj7Eox2ZpApfB+T323TzS7z5aDgNDsXIcBDUBLjM
 ERdaQwyVvyk2Lg8R+EzEwxoWZyInhgD8buv4sQ1WKoXPL1Wq3rYie9T73NGZIP2V
 Rp7Bh426mAzAMHdQvaRoZAjxtKVCUokP2EH7nxXrSi2AX8tZCqqU4BnbVvaDO6s/
 Mi2jHRXLr1CV1itVu0UeBsuA/03nTiI3vaDcAeqW+EdLpAXKSWRKqxteav1gMihB
 hMAwY6oPYtgUSOP0imQdzLFwszNbUni/8o+qiDMTbdBeBS7FmGz2SoH52/aadogV
 F7JdCaDkP8Tp96f96X5NWtfGLHt4OEBhYLItLw38EJPYqkLiKvYih+RHeXlENtIr
X-Rspamd-Queue-Id: 7203B254440
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_REJECT(1.00)[pta2002.com:s=pta2002-202603,mrs1.rp.oracleemaildelivery.com:s=prod-mrs-20211019];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[pta2002.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273618-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[pta2002.com:-,mrs1.rp.oracleemaildelivery.com:-];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pta2002@pta2002.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.790];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pta2002.com:mid]
X-Rspamd-Action: no action

Hi again, sorry for the follow-up:

On 10/03/2026 08:48, Heiko Stuebner wrote:
> Am Mittwoch, 4. März 2026, 21:44:39 Mitteleuropäische Normalzeit schrieb Pedro Alves:
>> +	pinctrl-names = "default";
>> +	hpd-gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
> 
> Also please provide a pinctrl setting for the gpio hpd pin.

I might be missing something, but isn't this already present with the
hdmirx_det pin? It's configured as hdmirx_hpd in other boards, but for
this one I left the hdmirx_det pin name after discussion in v1 of this
patch to match the schematic.

If you mean something else, please let me know.

Thanks,
Pedro

