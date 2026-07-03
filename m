Return-Path: <devicetree+bounces-319905-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h3ogHNh3R2rTYgAAu9opvQ
	(envelope-from <devicetree+bounces-319905-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:50:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 922E870045E
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:50:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=lenN6ra5;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=LkcXeAKY;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319905-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319905-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB0C2304E33D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 08:30:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25C13331EAE;
	Fri,  3 Jul 2026 08:30:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5FE2877F7
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 08:30:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783067444; cv=none; b=UX4WQzZd3saxmb5uo8C4s8LQIwtXZWeGa1o/lKx4+i7OHQFtTDViHNdcDRdl1KaKKKV9CwGzIv6SLTmG/bMlu9S7EDNilAyeM3YqjS2ZrssfbWLp0+VT7akg7NRdm5DYxKWEaakMfZ0Siei7rDBdH8C04Xy2SStDUfDwkpQ6j9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783067444; c=relaxed/simple;
	bh=vkOBJFJbc8ahCMf0KYx0lIWWOVbcyMJFfwTRFEwuDcw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tJ0jisTu0TWA+X1LlhXUFRt83A8cPUR+7kQjnDWoggZ8cqCNU3FqnCjF3qdLIDOHrMiEyqOFDXCzEKo4Y6y1/3KCEjkJ3GuW4q+kWpLSEvCuB/DthNdfjez1jzzT7iufVaWWGBg/rEYZKNj8mviKBfoG5QYab5INmfjoTViSOxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lenN6ra5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LkcXeAKY; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6637ZgU83410047
	for <devicetree@vger.kernel.org>; Fri, 3 Jul 2026 08:30:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IQzB05Le3t7BkZlqCUIOe2NWZsKrvDirZj8lWTmzDFI=; b=lenN6ra5NjvNgmWd
	P6u+RcmhBs2ddlHLmfmYGfkWuFx2K57HCwIgl6OT431lEGa5CMdBvL/dtaxmAlJq
	RuZaPyrKr3mY+BHHpgRJOahcD8J6bpOkIR0cwIrZ4ffAfeM4wkD3oi404zsGQASv
	nMNwVg5tOkaafYVTlefy2A942gwIzV02kpreHnvta5+Zvb5KjacTUk4Zc6Km2fl9
	5LhgKMbUI+hdZ59dKbvIN7aSKHzAXJlXLj8gFjH90ao//wKlgS/b6Urcv0iXDOIz
	UCBAFeCrRzXNvU2WezJLVe1VL124MAFfPvLCspMSJFSCh4pcNo81zPbyvzFjScJ6
	sRvr+A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f68u306en-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 08:30:36 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-92e52306621so23421785a.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 01:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783067435; x=1783672235; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IQzB05Le3t7BkZlqCUIOe2NWZsKrvDirZj8lWTmzDFI=;
        b=LkcXeAKY6Is8pm6hXVRsebxCHRKgaw/AKcv+TaaUT0Evf4Fj1RLNUfZ+hy8j8CZBKq
         3ZzXZVRcI7nb+chICAc9S9C7r/i8aY/8J+wU+KvVf+3QmtK6G9DfJ5vEbOHE0qaV4lb5
         PH3rttLaU0xhZSOSdPJnm0e8HWPj8zBsT6w1Np+6qja+Fmt95yRg/glhZlgp8/qE9oBC
         xwY93/HghRS5iErzMK6aXNFb6T2bq+ZexfzaGzG3qA49N1xJBjNmpnGr8pg9TjYNTBvb
         DLU/a2LfeUTKMyDgZaLMmKH3At9CfhweDA3ndUlA5yQjHhnLlaG3KyoTA2+PTI5pvRH5
         fk4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783067435; x=1783672235;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IQzB05Le3t7BkZlqCUIOe2NWZsKrvDirZj8lWTmzDFI=;
        b=AemvhoCNgDJnTUQSug2hIDYuMuhJmSaDNUXCFm3ztz4CG8bS6QqrvLR70dgYPd3Hdw
         JCjbpCqCrwCt1ZGphgiVwgfm23IrPP3N4MV5X/x0peMuDQAdt6GGItrpKf3KQ7w3xi9b
         57kqjX3y0NMrUrg+6+IxWmXkII0AUmxqzwPUb1TkjHMlzlN3J9UtgXmyXynEDnwtfc1y
         xQVHOaWq6Pst4AyoUy1KAZSBuEN/2wfkLbg4yxv6IqJ1NiBzLSszPsU8wx1F1QNB8dOq
         G6y6ZcW+7HtYHf77by9h7O3lCr3/IbFVhZQ/IfYVk+RweHsU7OA27cvfbKWDmVFVXBJ9
         EKig==
X-Forwarded-Encrypted: i=1; AFNElJ8z/szjFUW3qiJPlskNrIKkZLcV3JbZ+UEUfQybntnBXlsKFDCSa44xtAFRfRHB6mjWfh7XlCknfPnl@vger.kernel.org
X-Gm-Message-State: AOJu0YwPmPO3+6N7jK5cCRQCOMmU6KsuKh9azhXJh56myd3ngKsNUW6w
	44SasyMfxg/EoeRsxYGoHCLzLKu0RZ9Eq79FT9rlRxrxnupqfzRHMLwF+CkGPT40CIjlXrnxRYe
	vPEDn7NsXbZ2n8FmMkmdF3fK3pU6cIdceHiLSy8NWDdVBm+w+O9g1yXbLgYHtuBTX
X-Gm-Gg: AfdE7clxvNzDmvLRlCGF9yy2BQWLbieS1+SenI9Z5em1+AgUbxoedva5q5gvOMz87sv
	G+j/uQuIhMb801aetfB2a2YDfUHmJ5wjF9cw/m1+fBG/yh0GH1z9oEqtNdEELpRUoAmvzw9/poR
	vGJyp1Mrl1SkoBksUrBKDSTEyPlZDLnAnL6aBsePUu+vjVoT5Oh9K2o0pp9OpJjIXXTkaVjmQoo
	wzEytdrwnGJO3Az0M1dp+dVzMqBQKAqZkXB9v3UU0US9gsf5Qzw6cyUcixBmKRoOVoGIcoSJNe0
	ycVnq0nR0Czb4lRO2Je50o0Qi2IbZjuuOLCNuJEWRdLn/nLxHuNwlJk0DcopVcW5MBUpPAcECG+
	sEeJXubvh8FS7ScMi2LEj8dyd0YTGYdzAc2OTJvA=
X-Received: by 2002:a05:620a:4711:b0:92a:dcf5:ba5b with SMTP id af79cd13be357-92e781d35e8mr1242533885a.14.1783067435217;
        Fri, 03 Jul 2026 01:30:35 -0700 (PDT)
X-Received: by 2002:a05:620a:4711:b0:92a:dcf5:ba5b with SMTP id af79cd13be357-92e781d35e8mr1242528385a.14.1783067434660;
        Fri, 03 Jul 2026 01:30:34 -0700 (PDT)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:b934:1281:e054:26d2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-477de3dcf59sm16287808f8f.34.2026.07.03.01.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 01:30:27 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        linux-pci@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v2 2/4] power: sequencing: pcie-m2: Add QCA2066 (QCNFA765) BT serdev ID
Date: Fri,  3 Jul 2026 10:30:24 +0200
Message-ID: <178306742016.7902.6406831777462016236.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260702-monza-wireless-v2-2-7b56e2a6a6d4@oss.qualcomm.com>
References: <20260702-monza-wireless-v2-0-7b56e2a6a6d4@oss.qualcomm.com> <20260702-monza-wireless-v2-2-7b56e2a6a6d4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 9KsQ8aBqvvLnQcnyRLFQ30I1VuNryia8
X-Proofpoint-ORIG-GUID: 9KsQ8aBqvvLnQcnyRLFQ30I1VuNryia8
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDA4MCBTYWx0ZWRfXxYIMthAc2/AQ
 EPF9YQ8gRdL38NZKW3KSmZfDjl/2qwgGZ3gFItPnRg56QH3BJN6jx72PLvsaVSGwz4gpNRUu/YU
 2z6shcmDiQFbOd1B+QOScyXYOgHBq6E=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDA4MCBTYWx0ZWRfXykpFgxW+s0bL
 dSe1iXGm8R8FcnL+vG/8bum1ie5TQkk3SSsOg/LD02NPCr3OgIQPgEYRJ9d2xy3wzQB8QAn71Zl
 rXEbAci8/kRKOpTnargAt9RiFbrUTVbuighFUbX5zbbixqwykNtHvf28VPTiMnoowcotsw1E50c
 f0V0YEJpVfhwyPhCyQ9VMQmAB48RSwwc07sf/1KglMnrFc3TGpPeZQN45uqKYKV5E1dLX9TPY5o
 I4TeBlfzdbfaUVaklpQF/IQu+whvU0vx54USDjX0uNOrII7tSgVcHlWu9pEK3a7SwNcewYwWHdo
 JxVK9Afz9dweecyb8HqhE87XhJmcUEnCRj0P+9uzWIu2Y1auDa3/3oykDTDpeR9yvlQqmxHmGiZ
 UxX6n4vOYzYrBp47XH0znIZOo8o1GFqQrJ8NLYU/F4bUJ37NUd0rP3K1Igl+BeSktdeLn+UH5fs
 irP/oartdmGUnTwasvQ==
X-Authority-Analysis: v=2.4 cv=OaKoyBTY c=1 sm=1 tr=0 ts=6a47732c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=aaTFUzO4qDWa5CizT70A:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 spamscore=0 phishscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607030080
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319905-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:mani@kernel.org,m:brgl@kernel.org,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:loic.poulain@oss.qualcomm.com,m:bartosz.golaszewski@oss.qualcomm.com,m:linux-pci@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:devicetree@vger.kernel.org,m:manivannan.sadhasivam@oss.qualcomm.com,m:luizdentz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_TO(0.00)[kernel.org,holtmann.org,gmail.com,oss.qualcomm.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 922E870045E


On Thu, 02 Jul 2026 12:46:14 +0200, Loic Poulain wrote:
> Add PCI IDs for Qualcomm QCA2066/QCNFA765 to the M.2 serdev ID table,
> mapping it to the qcom,qca2066-bt compatible string.
> 
> The Subsystem Vendor ID (SVID) 0x0108 distinguishes the QCA2066 from
> the WCN6855.
> 
> This allows the pwrseq-pcie-m2 driver to automatically create the
> Bluetooth serdev device when a QCA2066-based M.2 card is enumerated.
> 
> [...]

Applied, thanks!

[2/4] power: sequencing: pcie-m2: Add QCA2066 (QCNFA765) BT serdev ID
      https://git.kernel.org/brgl/c/1656f4f2eb45d9f18515ac00657a2494719fa065

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

