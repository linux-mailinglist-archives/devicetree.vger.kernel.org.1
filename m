Return-Path: <devicetree+bounces-264277-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eC2jJUL2imn2OwAAu9opvQ
	(envelope-from <devicetree+bounces-264277-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:11:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4380F1189CB
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:11:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30C38309A614
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52CFE33F362;
	Tue, 10 Feb 2026 09:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FpgSl0bs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SSkEJe7C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B9033EAE7
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770714507; cv=none; b=AOi7lZx13cori4Ir5tvyoWU7xTb6pqsp7VbMp3C5SThcw1A4ovleoKTh5kl7vb5VLUMde45piFqWn1t0iFoEmUmUXRJLAKXTQMgAwmzsrAAgLJrC9l7eqparANlYuacNxy8k8giv6nP1tTvuKtHwkLSBlZdKBlCZEIeW0/HiaU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770714507; c=relaxed/simple;
	bh=8phweCTCuSE9/1VdxFMRPXiettcccLMsQxNnAgW5v/s=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=FU1oink3rT/HKQGYVImwKopWPq7td2HVH9r4zAx9XhJIxZuEhwbEsloP2bYrErOmgp8MIBgl30870UU48m9Um9kUASLbTJm3D+Kh93psXzeFnfmEC8PNECRtLhSG0YjkfDrp+eYEybZfK498oOGZaN0S1GqbXJUJCcJSgMOFZ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FpgSl0bs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SSkEJe7C; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A7Z2aO2169225
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:08:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C4ZTsxigu+39NKtIykvgwh1NpfGT1fBGZwq1IOP/Vew=; b=FpgSl0bs5NlaaIL9
	1u+aTJdu7inV4UgvP6QC5aQuRLwJRlZfct9d4FJQOE1jK+tq43lk+RcbXCDUC62H
	bG9WoWnx9CsHIMPw7stcK4DoP7rPmdMPqSY+ExX/VpFPZPbxUuRoUcGTXQjGwQtO
	VEWRqwRs781GTnG+Q9MExnaWOl+Rnsb0GTBpHaP2EvAWM0DuFUMAsGTIus3WpShS
	Vn1orEdcHCJt0QBchxWRXSTjp7w/UY3tyNzyWKhsfVmR2fr0fib+vSQdcn2z/WJm
	7TL+ujAJg/MEv9FLuZdL/brtBtv1LVDY2H8E/2xRxjcovmi6H9NFciP91D03Ftbz
	gYqQYw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c80drra2p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:08:24 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-896f35bc8ffso18737736d6.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770714503; x=1771319303; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C4ZTsxigu+39NKtIykvgwh1NpfGT1fBGZwq1IOP/Vew=;
        b=SSkEJe7CPQ5PqCQi2tUBxnM6GeAwkPgBMBMCYiCoN/mnuC77liQejxPaxLuhrwMbK0
         Q57z2/3eFWJsMaCKG/sQxiLRipilwfQloQV09Nt19iKCaWSR0ws8RBZt9Rului3RrqT8
         xPHRD01LhdZkP8QoQugQy18Uf06r07884FHGGmI3rhbZELA/IJqk0D/VN69Nw4Mwbt+0
         ykH3E/IU6+etwoMattkLI8DCnn5+Tp45kfu7HoSkP1CyerGvGKPJG6JCu7uGwfe4+dIv
         gZ1XPNHXAK3UcfVMSgSInPQH75mWJWHvVC3A8FbMEzWVgolhv3qd3+1ihYeNQZROVQBK
         cE2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770714503; x=1771319303;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C4ZTsxigu+39NKtIykvgwh1NpfGT1fBGZwq1IOP/Vew=;
        b=nlgL79kMjL/w0asddys5uTnIXzd6pNhzDb6pREL9VwZ5rQdQNasytizQ+Q+0r8EGqP
         o1TimdzKwPhPTxjCvCgX2zLb3clvX2y0Y6E0IWnU4f3NEkkvj5tcyGazlSeoDWqQiOiS
         fa+L4SXOetvPVvMLuOhncBX6xalb0HNKjSgalrVIk+BOITIIf6uiBq+Un/oBKvur+UC/
         wdSGs7RT/RZd2/dszOwAjYbxaM6g8zFB1uJwDuZA6qw9yIgF9g0lcB0+21qHJcUyd9+l
         WGxN2Ms2nKqNM/ceRmMHAc1vJON2VhlrTlpYcdJTWquenFe4iaSCuLIy+kQBYI5GMhED
         CQ/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVMbw/5O/vmjK8Op8Ts/dOmi91fztbPV65xUGtcsP5WwfCoBd62IF6BzLAq+aCxMkU9k1yEIY3K3ryU@vger.kernel.org
X-Gm-Message-State: AOJu0YxRXgXe9btJnYIIoQ8jhq9VGWytUGMRGWNr3U7tzCzz10892LDO
	PeSL4iVMSE4Jb8jqkrSG5ip9vwxAwtgGIepboMtaJdpXWrVIolk+xg06NqSAiUkz1ejGa2/0enG
	fh2GT7Tk4f2H+X9z+nFY9lRDhifL4Frsx2lGWbaHAMlUKkppSbweev5nKXXvFTd3u
X-Gm-Gg: AZuq6aL6DlfV1UpUVzfrYGZg+PDeVzT0xfG8z0K91Di9q6lLIO+aJ3v5IsaGiM8wLvS
	mQiRtG2o0k/KdDZhygojXkcAmj+DU8LjvV5W/78Msfl7VUn/zjZnlBNasqFPlvwQnzgWutHkeMa
	chbsYcqW6wiNdKk+YrV1SGwVcy2SgE/dIi0owxeItR9tJp9RVU1uv7zBDurtJplHu7RAQUCzMyf
	kSAGCNNW4TRsAROrCe9zRox0V/pqfGt9To93aiVskHxHmh8W46ILY9ycQcW+NEmsZCcZfJHfh+X
	FLm3ENlx/D8yzdNLMtJuydwExmaxGgxw8eg1+bSMWYxlJBqadk+zZFf7YOWcRQizUfdYRnaw8Tz
	OIQ8QOYQERzMDRl/lUiTmAceFc8iQaC0P9nKmRD72i6Oscp5YqD7z6TJm7UibTU+uWiAnt3LbkX
	SEs8c=
X-Received: by 2002:a0c:e00a:0:b0:896:faba:623a with SMTP id 6a1803df08f44-8970fee2f65mr8441296d6.7.1770714503327;
        Tue, 10 Feb 2026 01:08:23 -0800 (PST)
X-Received: by 2002:a0c:e00a:0:b0:896:faba:623a with SMTP id 6a1803df08f44-8970fee2f65mr8441016d6.7.1770714502974;
        Tue, 10 Feb 2026 01:08:22 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65983eb68cfsm3693616a12.12.2026.02.10.01.08.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 01:08:22 -0800 (PST)
Message-ID: <5fa188b3-d060-4513-bda3-6608a9bdd7ef@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 10:08:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] pinctrl: qcom: add sdm670 lpi tlmm
To: Richard Acayan <mailingradian@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
References: <20260210021109.11906-1-mailingradian@gmail.com>
 <20260210021109.11906-3-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260210021109.11906-3-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA3NiBTYWx0ZWRfX7MdGyHwcYTnj
 qSQZYQnaaD+Sb0sTo8hXSDxC9U2hqTikoglFKoY6eMMODysCM/YAsq4JLLRcJF1Ydc+KHKWWooS
 OBGg0r93ADoCy8IvZni1ddLqyPOkFn+VOyVl4fYat8ARtiVqyAEiOI/kp7nV5Ru+RHJp8j4x3Ue
 Zan4aY2qQ2yoMUP5id7cfkeDiHp8kWBaMgw0ADP9WZMb4XtvhlprZI/DpKybg+QPzI9kt7seiIn
 wnMGuvya5Cg5SBxuZ2JuyWZtDv4d1e/17UmMzANnd8kOUu3/kMqf24dLruCzq351czY1i2hoY7F
 KMKbmh02qmlzAD5bzfnxAY4rcN4oYl6kcKmPFVNBqHvAw63UDwhUBpckbFRnamsWd9zyN2wY57Q
 SquvYdGN6xxTBf5xNmvkg2OxTzGYg8BJ8pC/FWCY9pvb4ueDH40gv3ApHljjs2kXyiILvWb0YIv
 Q238gv2WnX3Hp/rLngQ==
X-Authority-Analysis: v=2.4 cv=fd+gCkQF c=1 sm=1 tr=0 ts=698af588 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=nadR7umDcEpqB2gTw5wA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: sVX1HKtue-s0UyyD1zW8Pgo1JH3XcbYk
X-Proofpoint-GUID: sVX1HKtue-s0UyyD1zW8Pgo1JH3XcbYk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100076
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264277-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4380F1189CB
X-Rspamd-Action: no action

On 2/10/26 3:11 AM, Richard Acayan wrote:
> The Snapdragon 670 has an Low-Power Island (LPI) TLMM for configuring
> pins related to audio. Add the driver for this.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

[...]

> +const struct lpi_pingroup sdm670_lpi_pinctrl_groups[] = {
> +	LPI_PINGROUP(0, LPI_NO_SLEW, _, _, _, _),
> +	LPI_PINGROUP(1, LPI_NO_SLEW, _, _, _, _),
> +	LPI_PINGROUP(2, LPI_NO_SLEW, _, _, _, _),
> +	LPI_PINGROUP(3, LPI_NO_SLEW, _, _, _, _),
> +	LPI_PINGROUP(4, LPI_NO_SLEW, _, _, _, _),
> +	LPI_PINGROUP(5, LPI_NO_SLEW, _, _, _, _),
> +	LPI_PINGROUP(6, LPI_NO_SLEW, _, _, _, _),
> +	LPI_PINGROUP(7, LPI_NO_SLEW, _, _, _, _),
> +
> +	LPI_PINGROUP(8, LPI_NO_SLEW, _, _, sec_tdm, _),

"i2s1_clk"

> +	LPI_PINGROUP(9, LPI_NO_SLEW, _, _, sec_tdm, _),

"i2s1_ws"

> +	LPI_PINGROUP(10, LPI_NO_SLEW, _, _, _, sec_tdm_din),

"i2s1_data"

> +	LPI_PINGROUP(11, LPI_NO_SLEW, _, sec_tdm_dout, _, _),

"i2s1_data"

> +
> +	LPI_PINGROUP(12, LPI_NO_SLEW, _, _, _, _),
> +	LPI_PINGROUP(13, LPI_NO_SLEW, _, _, _, _),
> +	LPI_PINGROUP(14, LPI_NO_SLEW, _, _, _, _),
> +	LPI_PINGROUP(15, LPI_NO_SLEW, _, _, _, _),
> +	LPI_PINGROUP(16, LPI_NO_SLEW, _, _, _, _),
> +	LPI_PINGROUP(17, LPI_NO_SLEW, _, _, _, _),
> +
> +	LPI_PINGROUP(18, LPI_NO_SLEW, _, pdm_clk, _, _),

"slimbus_clk"

Konrad

