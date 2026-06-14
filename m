Return-Path: <devicetree+bounces-311414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9kXwE0JPLmqxtAQAu9opvQ
	(envelope-from <devicetree+bounces-311414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 08:50:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCBF6807CD
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 08:50:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=online.fr (policy=none);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311414-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311414-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 15EE5300D689
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 06:50:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6998B38AC6A;
	Sun, 14 Jun 2026 06:50:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [212.27.42.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0E8D3890F9;
	Sun, 14 Jun 2026 06:50:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781419836; cv=none; b=Yk16gIif/nFtiE9bWU54Lbr+WA3BZyoHsjl5hlcrvjDNdbvAWt0G/+2z26fHE7FiioaBmdAGtckXJbch8Bfk8puKRS3PFtkAc8lGzYCqhSdbnap0n17fImatUqwcAom2YhWG2onnLUZkJB/84SBsaUetANNE8uE01op7rIWcsKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781419836; c=relaxed/simple;
	bh=dbYFjebjj2Q3VC4QtrLPpI34tWuFEhiwLP2eLYJqCaQ=;
	h=Content-Type:Message-ID:Date:MIME-Version:From:Subject:To:
	 In-Reply-To:Cc; b=ec2lsdhJS6fkF3cbBtn5WxGXofMg8/riJILvnRFjOhMwmaAhLlNXIt5oKJJa+HHQcLDp2HPt278UB2Gs7cAGimCliitswT46FhcrHaZ3hhP0EBUkH1G9vVlzm/TZ/PAkG7ZzD1CCRvxrLOQuXMJySx93POyq64WuERDwOabf3Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=online.fr; spf=pass smtp.mailfrom=online.fr; arc=none smtp.client-ip=212.27.42.5
Received: from [10.0.0.2] (unknown [82.65.243.93])
	(Authenticated sender: legoll@free.fr)
	by smtp5-g21.free.fr (Postfix) with ESMTPSA id 9AC466012D;
	Sun, 14 Jun 2026 08:50:14 +0200 (CEST)
Content-Type: multipart/mixed; boundary="------------RVgHdrMwKXEsVedW0RgSV6O5"
Message-ID: <f031e13e-d9f5-414a-b90e-a3d5a60b8d05@online.fr>
Date: Sun, 14 Jun 2026 08:50:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Vincent Legoll <legoll@online.fr>
Subject: [PATCH] riscv: dts: spacemit: orangepi-rv2: Add cpu scaling for K1,
 SoC
To: Shuwei Wu <shuwei.wu@mailbox.org>, "Rafael J. Wysocki"
 <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@kernel.org>,
 Yixun Lan <dlan@kernel.org>
Content-Language: en-US
In-Reply-To: <20260612-shadow-deps-v3-0-2f3ba88611ff@mailbox.org>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 devicetree@vger.kernel.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.24 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain,text/x-patch];
	DMARC_POLICY_SOFTFAIL(0.10)[online.fr : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+];
	FORGED_RECIPIENTS(0.00)[m:shuwei.wu@mailbox.org,m:rafael@kernel.org,m:viresh.kumar@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:dlan@kernel.org,m:linux-pm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-311414-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[legoll@online.fr,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[legoll@online.fr,devicetree@vger.kernel.org];
	HAS_ATTACHMENT(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,online.fr:mid,online.fr:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ACCBF6807CD

This is a multi-part message in MIME format.
--------------RVgHdrMwKXEsVedW0RgSV6O5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

[RESEND] as I cannot see yesterday's


Hello,



I tested (on OrangePi RV2) the attached patch applied over

spacemit/for-next + Shuwei Wu's V3 series.


This is a copy/paste of Shuwei Wu's work, so I don't know

if I can submit this with my SoB or if it should be done

differently, please advise.


Anyways, you can add my:

Tested-by: Vincent Legoll <vincent.legoll@gmail.com> # OrangePi-RV2


To the relevant patches from your series, if that's useful,

because it looks like it is working properly:


On Void linux (musl libc):


uname -a
Linux opirv2 7.1.0-rc1-00043-gb860bca13be4 #14 SMP PREEMPT Sat Jun 13 
11:02:13 CEST 2026 riscv64 GNU/Linux

awk --version | head -1
GNU Awk 5.3.2, API 4.0

echo userspace > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor

echo 1600000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
time awk 'BEGIN{for(i=0;i<1000000;i++){}}'
real    0m0.300s
user    0m0.299s
sys     0m0.001s

echo 1228800 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
time awk 'BEGIN{for(i=0;i<1000000;i++){}}'
real    0m0.432s
user    0m0.429s
sys     0m0.004s

echo 1000000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
time awk 'BEGIN{for(i=0;i<1000000;i++){}}'
real    0m0.476s
user    0m0.476s
sys     0m0.001s

echo 819000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
time awk 'BEGIN{for(i=0;i<1000000;i++){}}'
real    0m0.582s
user    0m0.581s
sys     0m0.001s

echo 614400 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
time awk 'BEGIN{for(i=0;i<1000000;i++){}}'
real    0m0.778s
user    0m0.773s
sys     0m0.005s

-- 

Vincent Legoll


--------------RVgHdrMwKXEsVedW0RgSV6O5
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-riscv-dts-spacemit-orangepi-rv2-Add-cpu-scaling-for-.patch"
Content-Disposition: attachment;
 filename*0="0001-riscv-dts-spacemit-orangepi-rv2-Add-cpu-scaling-for-.pa";
 filename*1="tch"
Content-Transfer-Encoding: base64

RnJvbSA5OTI0Nzg5NjU1YWU1ZjRmOThlN2E1Y2RjM2RmM2YzNGU3YmZiNjU5IE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBWaW5jZW50IExlZ29sbCA8dmluY2VudC5sZWdvbGxA
Z21haWwuY29tPgpEYXRlOiBTYXQsIDEzIEp1biAyMDI2IDEwOjQ5OjM0ICswMjAwClN1Ympl
Y3Q6IFtQQVRDSF0gcmlzY3Y6IGR0czogc3BhY2VtaXQ6IG9yYW5nZXBpLXJ2MjogQWRkIGNw
dSBzY2FsaW5nIGZvciBLMQogU29DCgpFbmFibGUgQ1BVIERWRlMgb24gT3JhbmdlUGkgUlYy
CgpUaGlzIGlzIGEgY29weS9wYXN0ZSBmcm9tIFNodXdlaSBXdSdzIEJQSS1GMyBEVFMgbW9k
aWZpY2F0aW9ucwoKU2lnbmVkLW9mZi1ieTogVmluY2VudCBMZWdvbGwgPHZpbmNlbnQubGVn
b2xsQGdtYWlsLmNvbT4KLS0tCiAuLi4vYm9vdC9kdHMvc3BhY2VtaXQvazEtb3JhbmdlcGkt
cnYyLmR0cyAgICAgfCAzNSArKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwg
MzQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvcmlz
Y3YvYm9vdC9kdHMvc3BhY2VtaXQvazEtb3JhbmdlcGktcnYyLmR0cyBiL2FyY2gvcmlzY3Yv
Ym9vdC9kdHMvc3BhY2VtaXQvazEtb3JhbmdlcGktcnYyLmR0cwppbmRleCA3YzQ5YmNlNDI3
ZjMuLjYyZDI1ZjU3OWFmNiAxMDA2NDQKLS0tIGEvYXJjaC9yaXNjdi9ib290L2R0cy9zcGFj
ZW1pdC9rMS1vcmFuZ2VwaS1ydjIuZHRzCisrKyBiL2FyY2gvcmlzY3YvYm9vdC9kdHMvc3Bh
Y2VtaXQvazEtb3JhbmdlcGktcnYyLmR0cwpAQCAtOCw2ICs4LDcgQEAKIAogI2luY2x1ZGUg
ImsxLmR0c2kiCiAjaW5jbHVkZSAiazEtcGluY3RybC5kdHNpIgorI2luY2x1ZGUgImsxLW9w
cC5kdHNpIgogCiAvIHsKIAltb2RlbCA9ICJPcmFuZ2VQaSBSVjIiOwpAQCAtODAsNiArODEs
MzggQEAgJmNvbWJvX3BoeSB7CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAorJmNwdV8wIHsK
KyAgICAgICBjcHUtc3VwcGx5ID0gPCZidWNrMV8wdjk+OworfTsKKworJmNwdV8xIHsKKyAg
ICAgICBjcHUtc3VwcGx5ID0gPCZidWNrMV8wdjk+OworfTsKKworJmNwdV8yIHsKKyAgICAg
ICBjcHUtc3VwcGx5ID0gPCZidWNrMV8wdjk+OworfTsKKworJmNwdV8zIHsKKyAgICAgICBj
cHUtc3VwcGx5ID0gPCZidWNrMV8wdjk+OworfTsKKworJmNwdV80IHsKKyAgICAgICBjcHUt
c3VwcGx5ID0gPCZidWNrMV8wdjk+OworfTsKKworJmNwdV81IHsKKyAgICAgICBjcHUtc3Vw
cGx5ID0gPCZidWNrMV8wdjk+OworfTsKKworJmNwdV82IHsKKyAgICAgICBjcHUtc3VwcGx5
ID0gPCZidWNrMV8wdjk+OworfTsKKworJmNwdV83IHsKKyAgICAgICBjcHUtc3VwcGx5ID0g
PCZidWNrMV8wdjk+OworfTsKKwogJmVtbWMgewogCWJ1cy13aWR0aCA9IDw4PjsKIAltbWMt
aHM0MDAtMV84djsKQEAgLTE2Miw3ICsxOTUsNyBAQCBwbWljQDQxIHsKIAkJZGxkb2luMi1z
dXBwbHkgPSA8JmJ1Y2s1PjsKIAogCQlyZWd1bGF0b3JzIHsKLQkJCWJ1Y2sxIHsKKwkJCWJ1
Y2sxXzB2OTogYnVjazEgewogCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAw
MD47CiAJCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzQ1MDAwMD47CiAJCQkJcmVn
dWxhdG9yLXJhbXAtZGVsYXkgPSA8NTAwMD47Ci0tIAoyLjU0LjAKCg==

--------------RVgHdrMwKXEsVedW0RgSV6O5--

