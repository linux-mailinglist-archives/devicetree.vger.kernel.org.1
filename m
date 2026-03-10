Return-Path: <devicetree+bounces-273459-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBhzKtH2r2mldwIAu9opvQ
	(envelope-from <devicetree+bounces-273459-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:47:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A634249A1C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:47:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2F9AF300D740
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F3B37F725;
	Tue, 10 Mar 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j1cI4VeQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="j1aatPzT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A63D837B413
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773139653; cv=none; b=nRQX0QSBtmF7TP+/4FPTeTkZy1Po42rdNUgSCmaJjy80rq1y4ocIaBdo5BkIDH9BgOmMDvWRzvzOPbitT3q03kKDGx2ap0yea0UzUAendkb68x+Av3BktX+mtxVImRCiFKZwkckwEFJ10oPudn/haetKXCC7Zww3Jnf6AXT39Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773139653; c=relaxed/simple;
	bh=d4uT9vz55VMZ8lK6PT76AAj0kJ9Hw6YCt/Fp3ykSQpE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mDYGLJN/5A39oeIq8Abwbaa8Fy5NB6CCZaHfZ9oJBYAWQd0Jx6I9bk7Nr88jQQ+DOMASYEh+d5xVJLOeCEUz4YFcMTpVZbRo8PWnTKZak86/YiKvTGzxJ4nINw5nHogMnYqeKim83aMreFtcbyrEknijlLr+BE0svefV3LzeH6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j1cI4VeQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=j1aatPzT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AARFJO4188517
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:47:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UhtN4t8s2K41bms/kSTpWSYPln+wsvmKnk2d4yUllsk=; b=j1cI4VeQ67rnNDoH
	Qoom0vBje4gRYpMzaMcS4m/zzg+fmUUGsScTPIDCay4XPeNyxzJvV+2G1QEuULkX
	mcQBD0/pdZhmvFBUydWAmnZ35yPkUawpjceGWqU2JEupPiWqS430G3CMFROGRbSp
	2r/5emvqdY5OQ+DDdA6Wx1Pki2IRceuo6QU6fq7CB8TfCYA/e0LJ6+Qfm2qUci2q
	r/0yR5rfZiMKoBVzsieNw1imGykiXiE59QHSD9kHM+FyTffhEwS1N4Jr3fECttQi
	MWlFG/RbZZlLK1bNF+MOtb4uTlrbqoVxd0Nj4mZVN/nfYhD2N9PQe9J5hDjhhH7p
	3SsbZA==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cthjf04d1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:47:31 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7d73992f72bso3370797a34.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773139651; x=1773744451; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UhtN4t8s2K41bms/kSTpWSYPln+wsvmKnk2d4yUllsk=;
        b=j1aatPzTdCO/+UITKeGgtphtV1V7CzA3SSAEKB79hd5FMQVfdb/nq9hUkxRlR2JX9i
         dq0/qwuHiNrrEv4YgxMN+oXAV8njk8VqQeoTwwsIhf5Foo3V0XW9iuUDLdT8dk7SIwe+
         mGzFyy/sf57g9yrFM0LAsZGcavgmvZolUNkn6bpciwDe86y/GZEttEY3aNYzyyq7sY6t
         dT08yDRksL0Hp5zephDBBQixyh4+24XwG5wmmeSbzQjYJG8WE4bcdf1Q9ST6QznxoC1r
         hQ0Z3mobunMhYUsUlL5ubsWpZXSlifTvD8km3f6JrDBlhVnxbNXI8KEatjbbU1Ool2Py
         RRPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773139651; x=1773744451;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UhtN4t8s2K41bms/kSTpWSYPln+wsvmKnk2d4yUllsk=;
        b=ELv7AjXSvhNpUFnPJtTlYxgIkiTXoOiRUNvsSRSLyz9t5svWkcQWOvH6epZwpcFSd7
         fFiYvaA8G9U3wwGcazN7IhxFIRchetS67shtRmcDXiiQ1SllK+4OBjM4HDQ1ulWS1HOr
         k+vHYtUqCN8jG6/hvTaUvXprf0PGpF70z/p/J7bVp8uvb+IH6nCyK9NrK+WIIIfM+Qoq
         7dgbR5o5wq2ftK+Cwy3gEPTVnQVef0KYBp986yy+Lg4+Zt5Zjb9U9PaYf5UqVr31+cQz
         XpvulFhMCAhzECE9nBwmFgULcUw+VtNblUR19pV/ddg3KvI0Ztw7DIakisBpwV9lRHar
         g/PA==
X-Forwarded-Encrypted: i=1; AJvYcCUb078xkHKwz2lZ77bAMM1rxHCJg0Lx7ymKNPe303qJNOsE+5063+pCoLgz0rShMMpwRRGdB4UmQpRx@vger.kernel.org
X-Gm-Message-State: AOJu0YwcqKrAUMDmjfAgHRTKiP1PA52FIJUevX3K7I49sfvf5AejbdgA
	oezbOHXIctRIjBANpxFjOf3O/T8+bDq18z5U73Err8yt5Ut98cBA7R7dsLUS0oFGKNv2YT95OCa
	hdqm2qA70JZ+b0UX2PjJpfVGQbOrEgxK0cDv9cSd1p0QXwYGczNzuO3QmK6k3oP73
X-Gm-Gg: ATEYQzxAuSz/DMydzsERnqXwmu4k2enJdzh/30HhkE0isWp4/WOnW6qk6wIi76YKbSX
	ivmp3fMXHh5VfRJ3Q2aXsbD3WkgweeoZjz0yC17HO+MD21Wpw3Dq3vow5mVetZsgHyT9AoNm3fP
	C+oXTEcJrPbH8iLeUAMatjwvD0dpSzfKh1Ufp8z+WvFRMD5GrbDCBpIHmn1RQLacLPPgaqP+52/
	YkT5D7DMPdCCrD6zMyRJwaq5UJ/jZvqGvfh8V0G/BF3fZ/W174UuQE9gp2WlWyIbZSCZJtuezOo
	KqYRBo2L0H6Of2jXgSLwVRgWZE0vLp3Ux5VPOLlR39BnIdZ8sxdjm+WFuh3vVN/2+EPwDJdimRU
	RymWhe7cz3IUGDaUx2siYxjCycndHMkH/IzU0jMApzfl6qKabQbXOzsLs3EWxFMfQKz7bsf+3nK
	KaikA=
X-Received: by 2002:a05:6214:5290:b0:89a:44d7:6589 with SMTP id 6a1803df08f44-89a44d768a9mr88556416d6.8.1773139341380;
        Tue, 10 Mar 2026 03:42:21 -0700 (PDT)
X-Received: by 2002:a05:6214:5290:b0:89a:44d7:6589 with SMTP id 6a1803df08f44-89a44d768a9mr88555926d6.8.1773139340510;
        Tue, 10 Mar 2026 03:42:20 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef47a2csm478497166b.7.2026.03.10.03.42.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 03:42:19 -0700 (PDT)
Message-ID: <7bdb0697-f2a1-465d-83b9-c7b68238bf71@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 11:42:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/7] arm64: dts: qcom: Add Arduino Monza (VENTUNOQ) board
 support
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: richardcochran@gmail.com, geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, m.facchin@arduino.cc, r.mereu@arduino.cc,
        loic.poulain@oss.qualcomm.com
References: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260309152420.1404349-5-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260309152420.1404349-5-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: _uKVoM9NL7trwjqsSWwDT8vgO-QKNkRH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA5MyBTYWx0ZWRfX0i4eymKcOHdr
 sHv9gGPHlNl0qtkYkW1oGRuq5nslLhFAIn4TNKGMNw+1tqP5/TaIPvWjdlUuNudFUKIcgPba+ud
 S+dm6V6XhLX7Z3KXOnYgFku/2bgjTmQ6cc0Xi59uc14qa5dsXCzDZ8iB0BH0HfemdQ6+4Hebg0N
 wB91kuWHncpBFnU/PlTQXx79idFu45P6tCXNSz3Lv01pTT52MZnKM3VRrchnICk+qKN8slj5i6R
 ve8dChpnqtsIUe/+tWH8JJRXpxho68Z75C0idCHs5x2tpgvHeCQn0YjO5MLJvouD5ChFhhABVRq
 SuxVfPV9KalOfz7hZEe4XSQmAmxk/dzmD4PNbr9TmSBtvIfUB7f5gibUfpRBblhSMm/oNz9tOSZ
 xie1WRms7DdRDjV7I7xiEseAIYNvtlSythoTaAAfzAmYa201ojkznC8F6W01db6lgB/MrWum84N
 1/sr/BL86emAVpj2kHA==
X-Authority-Analysis: v=2.4 cv=A71h/qWG c=1 sm=1 tr=0 ts=69aff6c3 cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=5D_ixgJ-nfAih4ZOxbkA:9 a=QEXdDO2ut3YA:10
 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-ORIG-GUID: _uKVoM9NL7trwjqsSWwDT8vgO-QKNkRH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100093
X-Rspamd-Queue-Id: 4A634249A1C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,arduino.cc];
	TAGGED_FROM(0.00)[bounces-273459-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/9/26 4:24 PM, Srinivas Kandagatla wrote:
> From: Loic Poulain <loic.poulain@oss.qualcomm.com>
> 
> Add device tree support for the Arduino VENTUNOQ board,
> based on the Qualcomm QCS8300 (Monaco) SoC.

[...]

> +	model = "Arduino VENTUNOQ";

FWIW the marketing material seems to call it "VENTUNO Q" (with a space)

[...]

> +&usb_1 {
> +	maximum-speed = "super-speed-plus";

This should be implied by the controller capabilities - does SSP still work
if you remove this line?

> +	usb-role-switch;
> +	wakeup-source;

These two belong in the SoC DTSI, the latter is already present

Konrad

