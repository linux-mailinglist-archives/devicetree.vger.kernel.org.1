Return-Path: <devicetree+bounces-262539-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKFYI/P7gmm6gAMAu9opvQ
	(envelope-from <devicetree+bounces-262539-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 08:57:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5BCE2DE0
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 08:57:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 564AC30209DD
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 07:57:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B36C638F235;
	Wed,  4 Feb 2026 07:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b="rMRrlZmR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C16A138F241
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 07:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770191821; cv=none; b=s569TKcT9PDx1v+5pXHVdvCl+vWHC0g0Dtf6pyAb9lfbUO2Ao7s2zLuJwXi7bih95/B6Bv7JVn8uMvaZnB3n4oyLyT2JvyOLk3iJf2RfGof9QqSlM762yDEMVsFeVQcZWUm4/t6Rtz4jLJNcCvGCzDI5dDvpSISNZU1RQd8rUBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770191821; c=relaxed/simple;
	bh=8dR0WpdOFZv6MqPbomihEeXQ3z0vbO0QWiziaV801CA=;
	h=Date:From:To:Cc:Subject:Mime-Version:Message-ID:Content-Type; b=iyhfVbkbiVaGUPuyqPa2eoPxf0huK4TfOMSpALH7XlqRKw7FYDR3C4HrOQbE0+SWbtUt7n32ZCh0oihhdGKWtXh2eARs8HF2QIgSuVO/zNXjj+0ulYNrHJFTfw4N17oWcEVCQtqtHUE8i4agKJT/X8Z/bqUzhM8xlToRsJ46l5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com; spf=none smtp.mailfrom=linux.spacemit.com; dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b=rMRrlZmR; arc=none smtp.client-ip=54.204.34.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.spacemit.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.spacemit.com;
	s=mxsw2412; t=1770191764;
	bh=8dR0WpdOFZv6MqPbomihEeXQ3z0vbO0QWiziaV801CA=;
	h=Date:From:To:Subject:Mime-Version:Message-ID;
	b=rMRrlZmR6ERPWmgRCUjk84GSyjrEF5Y/h/hQz8BDwrt/18d/v8mHPzetUyiU3jgOA
	 PNk7+CiC/lvLxGB8b9W1e13N8d2U3qIHTg/IzMQ7gu82fXBmqCOR0taAoh3K+zzd4m
	 1TJoV8gYId9iF8pK2PVvnbm5qaX2vg0fgAgBYcy8=
X-QQ-mid: zesmtpgz5t1770191762tfb731d52
X-QQ-Originating-IP: wamgZHZyXtb/Wamzb/vhrOl1LHkiXd86kO3zSwyooNY=
Received: from LT-LiangZhen-R ( [120.237.158.181])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 04 Feb 2026 15:56:01 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12210256409155211437
Date: Wed, 4 Feb 2026 15:56:01 +0800
From: =?GB2312?B?wbrV8g==?= <liangzhen@linux.spacemit.com>
To: suzuki.poulose <suzuki.poulose@arm.com>, 
	coresight <coresight@lists.linaro.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Cc: mike.leach <mike.leach@linaro.org>, 
	james.clark <james.clark@linaro.org>, 
	devicetree <devicetree@vger.kernel.org>
Subject: coresight: Device tree dependency cycle warnings with bidirectional port references
X-Priority: 3
X-GUID: EA8AF5BC-6891-48F5-BFDA-39702A2548A4
X-Has-Attach: no
X-Mailer: Foxmail 7.2.25.432[cn]
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Message-ID: <B7BF3F62D29F477F+202602041556010998302@linux.spacemit.com>
Content-Type: text/plain;
	charset="GB2312"
Content-Transfer-Encoding: base64
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:linux.spacemit.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NkN7Hk1lyTEB+vLj7dRZmAeY+QzqIWUVSfi5Fe2swxFxIDTRJBVkjoR1
	0x9zKHPpdWJ7v46EKT2Y81bEHU/l9Q72VhS+06oSAo1XxctvSEHREio8fIhVfCQNNGx+OUU
	zmnpvsFW9dKleblmW26HXcrKT7zP5ihgKEmDa4EaNSFG2v7YsEU91X5Wa1lJ+FaxetEcKk8
	OXFMoiGG4wZcdNWzGQ5v64xSq7cAzVNkGsPgPTtSg4RMwN8aRi7xeHd5MU6BSkQbeGJWHwn
	9d8qzltmuAKCwSo5lolVJLWWdeu+clWKTDWnKOrdKX3MIOl8i9Pkc9Xhq1Qo0heFI9JVsy6
	Mx7m2FPBM58lB51Alr0I+Lgd2ASKSJbf0CUo0d6ciNRBu6SBF3ATLNP7cbEk/5QNLvHG56e
	XttdBhOtbLiBIbxOonObIj+TSntjnKSJdn2YXBiKWxC5QgddxEj84QrPCEnfNhpunXQ0v93
	HCHJZgMDXzJgHNBZvtsSVNu0gb/4TtG58oJAtRV8rG4vPgtstNLW2cKf+dp1CW8vZ1pcBsK
	AooYEwnGS7qqLTIXPRwoK3w6xgyMGcUypVF+hQG74XNAoqjKS6HZXg0zpM/whKnxnUumzzF
	tAiSVTQELTwN0SEVnFZogCox6CXhFZimiND20VfEcG4X262PUBhvgBlnKNw42oLcxP6b2zC
	pLhgVgXwTXu8ICP11ciUnAlHEKRIguVo5tkkhdh9fD6PzsTiyLVFahHStcsUx9lZGdW8Dy+
	AO2jDUSjnF2GXP8DEZVeq1tYwl9lwhp4bJv5e6f8I/pMdnWAH5milliGw5uWuaEO9NNptM6
	pRX036qdAER41lCLAV62NChP2Dtr34sClK8x4OFlGjguYqmFADZ6DXHdlzlZonKLejGFj/p
	pbi5jcjqTAdGKz6z0glBw2NfrqxOcKM+6dt8Z1g1U46bB5TItlDYkbjOhrFAQGTtEp67GKi
	2QDi9T/SkoCmBtkn3SrEB/MrhNMnyOw/LaQWR8BE+WmYMUg==
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-RECHKSPAM: 0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[linux.spacemit.com:s=mxsw2412];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[spacemit.com];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262539-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linux.spacemit.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[liangzhen@linux.spacemit.com,devicetree@vger.kernel.org];
	HAS_X_PRIO_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,d9042000:email,d9044000:email,linux.spacemit.com:mid,linux.spacemit.com:dkim]
X-Rspamd-Queue-Id: 4E5BCE2DE0
X-Rspamd-Action: no action

SGkgQ29yZVNpZ2h0IG1haW50YWluZXJzLAoKSSdtIHdvcmtpbmcgb24gYWRkaW5nIENvcmVTaWdo
dCBzdXBwb3J0IGZvciBbeW91ciBTb0MvcGxhdGZvcm0gbmFtZV0gYW5kCmVuY291bnRlcmluZyBk
ZXBlbmRlbmN5IGN5Y2xlIHdhcm5pbmdzIGR1cmluZyBib290IHdoZW4gZGVmaW5pbmcgdGhlCmRl
dmljZSB0cmVlIHRvcG9sb2d5IHdpdGggYmlkaXJlY3Rpb25hbCBwb3J0IHJlZmVyZW5jZXMuCgoj
IyBQcm9ibGVtIERlc2NyaXB0aW9uCgpXaGVuIEkgZGVmaW5lIHRoZSBDb3JlU2lnaHQgdG9wb2xv
Z3kgaW4gZGV2aWNlIHRyZWUgd2l0aCByZW1vdGUtZW5kcG9pbnQKcHJvcGVydGllcyBpbiBib3Ro
IG91dC1wb3J0cyBhbmQgaW4tcG9ydHMgKGFzIHNob3duIGluIHNvbWUgZXhhbXBsZXMpLAp0aGUg
a2VybmVsIHJlcG9ydHMgZGVwZW5kZW5jeSBjeWNsZSB3YXJuaW5nczoKCi4uLgpbICAgIDIuMDky
MjQzXSAvc29jL2Z1bm5lbEBkOTA0MjAwMDogRml4ZWQgZGVwZW5kZW5jeSBjeWNsZShzKSB3aXRo
IC9zb2MvZXRmQGQ5MDQzMDAwClsgICAgMi4wOTk4NDNdIC9zb2MvZnVubmVsQGQ5MDQyMDAwOiBG
aXhlZCBkZXBlbmRlbmN5IGN5Y2xlKHMpIHdpdGggL3NvYy9ldGZAZDkwNDMwMDAKWyAgICAyLjEw
NzM1OV0gL3NvYy9ldGZAZDkwNDMwMDA6IEZpeGVkIGRlcGVuZGVuY3kgY3ljbGUocykgd2l0aCAv
c29jL2Z1bm5lbEBkOTA0MjAwMApbICAgIDIuMTE0ODk5XSAvc29jL2V0ZkBkOTA0MzAwMDogRml4
ZWQgZGVwZW5kZW5jeSBjeWNsZShzKSB3aXRoIC9zb2MvZXRyQGQ5MDQ0MDAwClsgICAgMi4xMjIy
MzRdIC9zb2MvZXRmQGQ5MDQzMDAwOiBGaXhlZCBkZXBlbmRlbmN5IGN5Y2xlKHMpIHdpdGggL3Nv
Yy9ldHJAZDkwNDQwMDAKWyAgICAyLjEyOTQ5Ml0gL3NvYy9ldHJAZDkwNDQwMDA6IEZpeGVkIGRl
cGVuZGVuY3kgY3ljbGUocykgd2l0aCAvc29jL2V0ZkBkOTA0MzAwMAoKIyMgQ3VycmVudCBEZXZp
Y2UgVHJlZSBTdHJ1Y3R1cmUKCiAgICAgICAgICAgICAgICBldGY6IGV0ZkBkOTA0MzAwMCB7CiAg
ICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYXJtLGNvcmVzaWdodC10bWMiLCAi
YXJtLHByaW1lY2VsbCI7CiAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDAgMHhkOTA0
MzAwMCAweDAgMHgxMDAwPjsKICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZkdW1t
eV9jbGs+OwogICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJhcGJfcGNsayI7
CiAgICAgICAgICAgICAgICAgICAgICAgIG91dC1wb3J0cyB7CiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcG9ydCB7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBldGZfb3V0X3BvcnQ6IGVuZHBvaW50IHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZldHJfaW5fcG9ydD47CiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9OwogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIH07CiAgICAgICAgICAgICAgICAgICAgICAgIH07CiAgICAgICAgICAgICAg
ICAgICAgICAgIGluLXBvcnRzIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwb3J0
IHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGV0Zl9pbl9wb3J0OiBl
bmRwb2ludCB7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHJlbW90ZS1lbmRwb2ludCA9IDwmbWFpbl9mdW5uZWxfb3V0X3BvcnQ+OwogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB9OwogICAgICAgICAgICAgICAgICAgICAgICB9OwogICAgICAgICAgICAgICAgfTsKCiAg
ICAgICAgICAgICAgICBldHI6IGV0ckBkOTA0NDAwMCB7CiAgICAgICAgICAgICAgICAgICAgICAg
IGNvbXBhdGlibGUgPSAiYXJtLGNvcmVzaWdodC10bWMiLCAiYXJtLHByaW1lY2VsbCI7CiAgICAg
ICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDAgMHhkOTA0NDAwMCAweDAgMHgxMDAwPjsKICAg
ICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZkdW1teV9jbGs+OwogICAgICAgICAgICAg
ICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJhcGJfcGNsayI7CiAgICAgICAgICAgICAgICAgICAg
ICAgIGFybSxzY2F0dGVyLWdhdGhlcjsKICAgICAgICAgICAgICAgICAgICAgICAgaW4tcG9ydHMg
ewogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBvcnQgewogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZXRyX2luX3BvcnQ6IGVuZHBvaW50IHsKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0g
PCZldGZfb3V0X3BvcnQ+OwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fTsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9OwogICAgICAgICAgICAgICAgICAg
ICAgICB9OwogICAgICAgICAgICAgICAgfTsKCiMjIFF1ZXN0aW9ucwoKVGhlIGtlcm5lbCdzIGZ3
X2RldmxpbmsgbWVjaGFuaXNtIGRldGVjdHMgYW5kICJmaXhlcyIgdGhlc2UgY3ljbGVzLAogICBi
dXQgY2FuIEkgYXZvaWQgdGhlbSBpbiB0aGUgZGV2aWNlIHRyZWUgZGVmaW5pdGlvbj8KClRoZSBz
eXN0ZW0gd29ya3MgY29ycmVjdGx5IGRlc3BpdGUgdGhlIHdhcm5pbmdzLCBidXQgSSdkIGxpa2Ug
dG8KdW5kZXJzdGFuZCB0aGUgcHJvcGVyIHdheSB0byBkZWZpbmUgdGhlIHRvcG9sb2d5IHRvIGF2
b2lkIHRoZXNlIG1lc3NhZ2VzLgoKVGhhbmsgeW91IGZvciB5b3VyIGd1aWRhbmNlIQoKLS0tLS0t
LS0tLS0tLS0KCkJlc3QgcmVnYXJkcywKbGlhbmd6aGVuCgo=


